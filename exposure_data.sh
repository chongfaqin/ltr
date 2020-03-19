dt=$(date -d"-30 day" +%Y%m%d)
echo ${dt}
sql="select t.kw,t.goods_id,count(1) from (
select user_key,goods_id,split(loc,':')[7] as kw from search.exposure_goods_detail where day>=${dt} and loc rlike '^search:' group by user_key,goods_id,split(loc,':')[7]
) t group by t.kw,t.goods_id;"
echo ${sql}
hive -e "${sql}" > /home/chongfaqin/ltr/data/exposure.data
