import pandas as pd
import numpy as np

user_item_lable_df=pd.read_csv("result/example_data.txt",names=["qid","label","goods_id"],skiprows=None)
print(np.shape(user_item_lable_df))
count=12000
test_df=user_item_lable_df.sample(n=count)
print(np.shape(test_df))
print(test_df.head(10))
# train_df = pd.concat([user_item_lable_df, test_df], axis=0)   # 拼接
# train_df=user_item_lable_df
train_df=user_item_lable_df.drop(test_df.index)
print(np.shape(train_df))
print(train_df.head(10))

vali_df=train_df.sample(n=count)
train_df=train_df.drop(vali_df.index)
print(np.shape(train_df))
print(train_df.head(10))

test_df.to_csv("result/example_test_data.txt",index=False,header=False)
vali_df.to_csv("result/example_vali_data.txt",index=False,header=False)
train_df.to_csv("result/example_train_data.txt",index=False,header=False)
