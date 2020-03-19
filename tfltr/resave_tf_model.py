import tensorflow as tf
import utils
from model import LogisticRegression

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
    "epoch": 10,
    "feature_dim": 46,

    "batch_sampling_method": "sample",
    "shuffle": True,

    "optimizer_type": "adam",
    "init_lr": 0.001,
    "beta1": 0.975,
    "beta2": 0.999,
    "decay_steps": 1000,
    "decay_rate": 0.9,
    "schedule_decay": 0.004,
    "random_seed": 2018,
    "eval_every_num_update": 100,
}

params = {
    "offline_model_dir": "weights/lr",
}
params.update(params_common)
logger = utils._get_logger("logs", "tf-%s.log" % utils._timestamp())
model = LogisticRegression("ranking", params, logger)
model.restore_session()
# SAVE THE MODEL
builder = tf.saved_model.builder.SavedModelBuilder("model" )
builder.add_meta_graph_and_variables(
  model.sess,
  [tf.saved_model.tag_constants.SERVING]
)
builder.save()
