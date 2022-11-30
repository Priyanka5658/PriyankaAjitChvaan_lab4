select t2.CUS_GENDER, COUNT(CUS_ID) as Customer_Count from (select t1.CUS_ID,t1.CUS_GENDER,t1.ORD_AMOUNT from (
select Customer.cus_name, customer.CUS_GENDER,`order`.* from customer inner join `order` on customer.CUS_ID = `order`.CUS_ID where ORD_AMOUNT >= 3000
) as t1
group by t1.CUS_ID) as t2
group by t2.CUS_GENDER;

select cus_gender, count(cus_gender) count from customer
where cus_id in (select cus_id from `order` where ord_amount >= 3000)
group by cus_gender;
SELECT CUS_GENDER, COUNT(DISTINCT CUSTOMER.CUS_ID) AS NO_CUSTOMER FROM CUSTOMER, `ORDER` WHERE (CUSTOMER.CUS_ID = `ORDER`.CUS_ID && `ORDER`.ORD_AMOUNT>=3000) group by CUSTOMER.CUS_GENDER;