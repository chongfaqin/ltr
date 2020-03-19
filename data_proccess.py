import pandas as pd
import numpy as np

kw_clk={}
with open("data/clk.data","r",encoding="utf-8") as file:
    for line in file.readlines():
        # print(line.strip())
        arr=line.strip().split("\t")
        if(arr[0]==""):
            continue
        if(len(arr)!=3):
            print(arr)
            continue
        arr[0] = arr[0].lower()
        if(arr[1].startswith("g_")):
            arr[1]=arr[1].replace("g_","")
        if(arr[0] in kw_clk.keys()):
            kw_clk[arr[0]].append((int(arr[1]),int(arr[2])))
        else:
            kw_clk[arr[0]]=[(int(arr[1]),int(arr[2]))]

kw_exp={}
with open("data/exposure.data","r",encoding="utf-8") as file:
    for line in file.readlines():
        arr=line.strip().split("\t")
        if(arr[0]==""):
            continue
        if (len(arr) != 3):
            print(arr)
            continue
        if(arr[1]=='' or arr[2]==''):
            continue
        arr[0]=arr[0].lower()
        if(arr[0] in kw_exp.keys()):
            kw_exp[arr[0]].append((int(arr[1]),int(arr[2])))
        else:
            kw_exp[arr[0]] = [(int(arr[1]), int(arr[2]))]

# print(len(kw_clk),kw_clk)
# print(len(kw_exp),kw_exp)

filter_set=set()
with open("data/stop-query.txt","r",encoding="utf-8") as file:
    for line in file.readlines():
        filter_set.add(line.strip())

kw_clk_rate={}
for k,v in kw_exp.items():
    if(len(v)<2):
        continue
    if(len(k)>30):
        continue
    if(len(k)<2):
        continue
    if(k not in kw_clk.keys()):
        continue
    if (arr[0] in filter_set):
        continue
    if (arr[0].__contains__("日本") or arr[0].__contains__("香港") or arr[0].__contains__("郑州")):
        # print("filter kw:",arr[0])
        continue
    if (arr[0].__contains__("满") and arr[0].__contains__("减")):
        # print("filter kw:",arr[0])
        continue
    if (arr[0].__contains__("折") and arr[0] != "折叠伞"):
        # print("filter kw:", arr[0])
        continue
    # print(k, v)
    goods_clk_count={}
    clk_list=kw_clk[k]
    for gd in clk_list:
        goods_clk_count[gd[0]]=gd[1]

    exp_rate={}
    exp_list=v
    for gd in exp_list:
        goods_id=gd[0]
        exp_count=gd[1]
        if(exp_count<30):
            continue
        if(goods_id in goods_clk_count.keys()):
            exp_rate[goods_id]=(goods_clk_count[goods_id]+1)/(exp_count+1)
        else:
            exp_rate[goods_id]=1/(exp_count+1)

    exp_rate=sorted(exp_rate.items(), key=lambda d: d[1], reverse=True)
    print(exp_rate)
    kw_clk_rate[k]=exp_rate

# goods_feature={}
# goods_df=pd.read_csv("data/embedding.txt",delimiter="\t",names=["nid","id","name","tag","embedding"])
# goods_df=goods_df[goods_df["tag"]=="goods"]
# goods_df=goods_df[["id","embedding"]]
# for id,embedding_list in goods_df.values:
#     goods_feature[id]=" ".join([str(i+1)+":"+str(embedding_val) for i,embedding_val in enumerate(embedding_list)])

file=open("result/example_data.txt","w",encoding="utf-8")

kw_index_dict={}
kw_index=-1
for k,v in kw_clk_rate.items():
    # print(k)
    if(k in kw_index_dict.keys()):
        kw_index=kw_index_dict[k]
    else:
        kw_index = kw_index + 1
        kw_index_dict[k]=kw_index
    count=len(v)
    if(count<2):
        continue
    level=count/3
    for idx in range(count):
        print(kw_index,v[idx][1])
        goods_id=v[idx][0]
        file.write(str(kw_index) + "," + str(np.round(v[idx][1], 4)) + "," + str(goods_id) + "\n")
        # file.write(str(kw_index) + "," + str(2) + "," + str(goods_id) + "\n")
        # if(goods_id not in goods_feature.keys()):
        #     continue
        # if(idx<level):
        #     file.write(str(kw_index) + "," + str(2) + "," + str(goods_id) + "\n")
        # elif(idx>=count-level):
        #     file.write(str(kw_index) + "," + str(0) + "," + str(goods_id) + "\n")
        # else:
        #     file.write(str(kw_index) + "," + str(1) + "," + str(goods_id) + "\n")
        # print(v[idx])
        # if(v[idx][1]>v[idx+1][1]):
        #     print(kw_index,1,v[idx][0],v[idx+1][0])
        #     file.write("q:"+str(kw_index)+","+str(1)+","+str(v[idx][0])+","+str(v[idx+1][0])+"\n")
file.close()

kw_file=open("result/kw_index.txt","w",encoding="utf-8")
for k,v in kw_index_dict.items():
    kw_file.write(str(k)+","+str(v)+"\n")
kw_file.close()
