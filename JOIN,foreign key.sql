show databases;
use batch1320;
show tables;
create table department(dept_id int primary key, dept_name varchar(50));
show tables;
drop table employee;
show tables;
create table employee(emp_id int primary key, emp_name varchar(50) , dept_id int ,  foreign key(dept_id) references department(dept_id));
desc employee;
desc department;
insert into department(dept_id,dept_name) values (1 , 'HR') , (2, 'salesman') , (3, 'marketing') , (4 , 'finance') , (5 , null);
select * from department;
insert into employee(emp_id , emp_name, dept_id) values (1001, 'shruti' , 1) , (1002 , 'priya', 2) , (1003 , 'radha',3) , (1004, 'ankita', 4),(1005 , 'pooja', 5) ;
select * from employee;
insert into employee(emp_id , emp_name, dept_id) values (1008, 'anita' , 1) , (1009 , 'vijay', 2) ;
select * from employee;
insert into employee(emp_id , emp_name, dept_id) values (1007, 'anita' , NULL); 
select * from employee;
select employee.emp_name , department.dept_name from employee INNER JOIN department on employee.dept_id = department.dept_id;
select employee.emp_name , department.dept_name from employee LEFT JOIN department on employee.dept_id = department.dept_id;
select employee.emp_name , department.dept_name from employee RIGHT JOIN department on employee.dept_id = department.dept_id;

select employee.emp_name , department.dept_name from employee LEFT JOIN department on employee.dept_id = department.dept_id
UNION
select employee.emp_name , department.dept_name from employee RIGHT JOIN department on employee.dept_id = department.dept_id;

select employee.emp_name , employee.emp_id ,department.dept_name , department.dept_id from employee CROSS JOIN department;


show tables;
drop table orders;


/*---------------------------------task--------------------------------------*/

create table orders(order_id int primary key , order_date date);
show tables;
create table product(product_id int primary key , product_name varchar(60));
show tables;
create table customer (customer_id int primary key , customer_name varchar(50), order_id int, FOREIGN KEY(order_id) references orders(order_id) , product_id int , FOREIGN KEY(product_id) references product(product_id));
 show tables;
 
 insert into orders (order_id  , order_date) values (1, '2026-2-1'),(2,'2026-5-22'),(3,'2026-5-30'),(4,'2026-8-7');
select * from orders;

 insert into product(product_id , product_name) values (501 , 'mobile') , (502,'pen') , (503,'bag') , (504 , 'laptop');
 select * from product;

insert into customer (customer_id , customer_name , order_id , order_id) values ( 801 , 'shruti' , 1 , 'mobile' ) , (802, 'priya', 2, 'pen'), (803, 'radha' , 3 , 'bag' ) , (804 , 'ram' , 4 , 'laptop');
















