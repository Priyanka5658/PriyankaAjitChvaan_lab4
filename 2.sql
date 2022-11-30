select product.pro_name, `order`.* from `order`, supplier_pricing, product
where `order`.cus_id=2 and
`order`.pricing_id=supplier_pricing.pricing_id and supplier_pricing.pro_id=product.pro_id;

select product.pro_name, t1.* from product inner join
(select `order`.*,supplier_pricing.pro_id from `order` inner join supplier_pricing on `order`.pricing_id=supplier_pricing.pricing_id where `order` on t1.pro_id=product.pro_id;