select t3.cat_iD,t3.CAT_NAME,t3.pro_name , min(t3.min_price) as min_price from
(select category.*,t2.pro_name,t2.min_price from category inner join
(select product.*,t1.min_price from product inner join
(select pro_id, min(SUPP_PRICE) as min_price from supplier_pricing group by pro_id) as t1
on product. PRO_ID= t1.PRO_ID) as t2
on category.CAT_ID= t2.cat_id) as t3
group by t3.cat_id;