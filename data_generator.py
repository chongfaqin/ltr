import pandas as pd

goods_feature={}
goods_df=pd.read_csv("data/embedding.txt",delimiter="\t",names=["nid","id","name","tag","embedding"])
goods_df=goods_df[goods_df["tag"]=="goods"]
goods_df=goods_df[["id","embedding"]]
for id,embedding_list in goods_df.values:
    embedding_list=embedding_list.split(",")
    goods_feature[id]=" ".join([str(i+1)+":"+str(embedding_val) for i,embedding_val in enumerate(embedding_list)])

train_file=open("result/train.txt","w")
with open("result/example_train_data.txt","r",encoding="utf-8") as file:
    for line in file.readlines():
        arr=line.strip().split(",")
        if(int(arr[2]) not in goods_feature.keys()):
            continue
        train_file.write(arr[1]+" "+"qid:"+arr[0]+" "+goods_feature[int(arr[2])]+"#docid="+arr[2]+"\n")
train_file.close()

test_file=open("result/test.txt","w")
with open("result/example_test_data.txt","r",encoding="utf-8") as file:
    for line in file.readlines():
        arr=line.strip().split(",")
        if (int(arr[2]) not in goods_feature.keys()):
            continue
        test_file.write(arr[1] + " " + "qid:" + arr[0] + " " + goods_feature[int(arr[2])]+"#docid="+arr[2]+"\n")

vali_file=open("result/vali.txt","w")
with open("result/example_test_data.txt","r",encoding="utf-8") as file:
    for line in file.readlines():
        arr=line.strip().split(",")
        if (int(arr[2]) not in goods_feature.keys()):
            continue
        vali_file.write(arr[1] + " " + "qid:" + arr[0] + " " + goods_feature[int(arr[2])]+"#docid="+arr[2]+"\n")
vali_file.close()
