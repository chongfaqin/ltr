
import sys
import numpy as np

import utils
from model import RankNet
from prepare_data import label_file_pat, group_file_pat, feature_file_pat

def load_data(type):

    labels = np.load(label_file_pat%type)
    qids = np.load(group_file_pat%type)
    features = np.load(feature_file_pat%type)

    X = {
        "feature": features,
        "label": labels,
        "qid": qids
    }
    return X


utils._makedirs("logs")
logger = utils._get_logger("logs", "tf-%s.log" % utils._timestamp())

params_common = {
    # you might have to tune the batch size to get ranknet and lambdarank working
    # keep in mind the followings:
    # 1. batch size should be large enough to ensure there are samples of different
    # relevance labels from the same group, especially when you use "sample" as "batch_sampling_method"
    # this ensure the gradients are nonzeros and stable across batches,
    # which is important for pairwise method, e.g., ranknet and lambdarank
    # 2. batch size should not be very large since the lambda_ij matrix in ranknet and lambdarank
    # (which are of size batch_size x batch_size) will consume large memory space
    "batch_size": 128,
    "epoch": 120,
    "feature_dim": 60,

    "batch_sampling_method": "sample",
    "shuffle": True,

    "optimizer_type": "adam",
    "init_lr": 0.005,
    "beta1": 0.9,
    "beta2": 0.999,
    "decay_steps": 1000,
    "decay_rate": 0.975,
    "schedule_decay": 0.004,
    "random_seed": 2019,
    "eval_every_num_update": 100,
}


def train_ranknet():
    params = {
        "offline_model_dir": "weights/ranknet",

        # deep part score fn
        "fc_type": "fc",
        "fc_dim": 16,
        "fc_dropout": 0.,

        # ranknet param
        "factorization": True,
        "sigma": 1.,
    }
    params.update(params_common)

    X_train, X_valid = load_data("train"), load_data("vali")

    model = RankNet("ranknet", params, logger)
    model.fit(X_train, validation_data=X_valid)
    model.save_session()

def main():
    train_ranknet()


if __name__ == "__main__":
    main()
