show databases;
use batch1320;
select * from orders;
select product_name ,COUNT(product_name) AS totalCount from orders GROUP BY product_name;
select * from orders;
select product_name , SUM(price) AS totalRevenue from orders GROUP BY product_name having SUM(price)>300;