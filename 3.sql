select supplier.* from supplier where supplier.supp_id in 
(select supp_id from supplier_pricing group by supp_id having 
count (PRO_ID)>1);