select product.pro_name, `order` .* from `order`, supplier_pricing, product
where `order`.cus_id=2 and
`order` .pricing_id=supplier_pricing.pricing_id and supplier_pricing.pro_id=product.pro_id;
select product.pro_name, `order`.* from product inner join supplier_pricing on supplier_pricing.pro_id=product.pro_id
 inner join `order` on `order` .pricing_id=supplier_pricing.pricing_id where `order` .cus_id=2;
select pro_id, pro_name from product where pro_id in(
select supplier_pricing.pro_id from supplier_pricing where supplier_pricing.pricing_id in
(select `order`.pricing_id from `order` where `order`.cus_id = 2))