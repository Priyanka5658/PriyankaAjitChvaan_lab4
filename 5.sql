select product.pro_id,product.pro_name from `order`
inner join supplier_pricing
on supplier_pricing.pricing_id=`order`.pricing_id
inner join product on product.pro_id=supplier_pricing.pro_id 
where `order`.ord_date>"2021-10-05";

select PRO_ID, PRO_NAME from product where PRO_ID IN (select PRO_ID from supplier_pricing where PRICING_ID IN(select PRICING_ID from `order` where ORD_DATE > '2021-10-5'));