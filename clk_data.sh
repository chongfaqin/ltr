dt=$(date -d"-30 day" +%Y%m%d)
echo ${dt}
sql="select t.keyword,t.goodsid,sum(t.c1) from (SELECT user_key,split(loc,':')[7] keyWord,split(loc,':')[6] goodsid,count(1) as c1 
FROM wonderfull_stat.user_action 
where day>=${dt} and loc regexp '^search:*:.*:general:g_' and (method='Goods.getDetailByGoodsIdV9' or method='cart.add')
group by user_key,split(loc,':')[7],split(loc,':')[6]) t group by t.keyword,t.goodsid;"
echo ${sql}
hive -e "${sql}" > /home/chongfaqin/ltr/data/clk.data
