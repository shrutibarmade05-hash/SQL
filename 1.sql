show databases;
use batch1320;
show tables;
select * from orders;

/* display all orders placed by customer from latur--------------------------------*/
select  * from orders where city = 'latur';

/*show all orders where price is greater than 5000------------------*/
select * from orders where price > 5000;

/*find all orders where payment mode is upi-----------------*/
select * from orders where payment_mode = 'upi';

/*display all orders where status is deliverd----------*/
select * from orders where status = 'deliverd';

/* show order where quantity is in betwwn 2 and 5 -------------------*/
select * from orders where quantity between 2 and 5;

/*display orders wherre catrgory is electronics or clothing--------------*/
select * from orders where category IN ('electronic','cloth');

/*find order where customer name start with s-----------------*/
select * from orders where customer_name like 's%';

/*show order where prodcut name contains phone----------------------*/
select * from orders where product_name like '%phone%';

/*dispaly all orders sorted by price in descending order-------------------*/
select * from orders order by price desc;

/*show orders sorted by order_date.-------------------*/
select * from orders order by order_date desc;

/*find the total revenue (price*quantity)-------------------------------*/
select sum(price*quantity) from orders;

/*find the average price of prodcuts------------------------*/
select avg(price) as averagePrice from orders;

/* count how many orders are placed-----------------*/
select count(*) AS totalOrders from orders;

/* write the name of all customer-------------------------*/
select customer_name from orders;

/*how many customer are there in total------------------------*/
select count(*) from orders;

/*how many customer brought sandals---------------------*/
select count(sandals) from orders;

