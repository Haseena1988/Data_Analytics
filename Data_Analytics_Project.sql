create database Data_Analytics;
create table employees(emp_id int primary key,
 emp_name varchar(20),
 dept_id int,
 foreign key(dept_id) references departments(dept_id), 
 manager_id int, 
 salary decimal, 
 hire_date DATE, 
 city varchar(20));
insert into employees values(101,'Divya',10,51,100000,'2020-01-10','Chennai'),
(102,'Meena',11,52,99000,'2020-04-11','Salem'),
(103,'Riya',12,53,94000,'2020-01-10','CBE'),
(104,'Abdul',13,54,89000,'2021-01-13','Ooty'),
(105,'John',14,55,84000,'2020-05-15','Bangalore'),
(106,'Prince',15,56,79000,'2022-04-17','Hyderabad'),
(107,'Vinoth',16,57,74000,'2022-03-16','Ooty'),
(108,'Suresh',17,58,69000,'2022-04-15','Delhi'),
(109,'Ram',18,59,64000,'2023-10-19','CBE'),
(110,'Sonu',19,60,59000,'2023-11-10','Bangalore');
select * from employees;
drop table employees;

use Data_Analytics;
create table departments(
dept_id int primary key, 
dept_name varchar(20),
location varchar(20));

insert into departments values(
10,'HR','Chennai'),
(11,'Finance','Salem'),
(12,'Accounts','CBE'),
(13,'Operations','Ooty'),
(14,'Customer Support','Chennai'),
(15,'Technical Support','Bangalore'),
(16,'IT','CBE'),
(17,'Software Development','Bangalore'),
(18,'Data Analytics','Madurai'),
(19,'Marketing','Chennai');

select * from departments;
drop table departments;

create table customers(customer_id int primary key,
 customer_name varchar(20),
 city varchar(20),
 signup_date DATE);
 
 insert into customers values(71,'Raga','Salem','2020-02-25'),
 (72,'Nabeel','Kerala','2022-05-13'),
 (73,'Akil','Kerala','2022-04-14'),
 (74,'Prabhu','Gujarat','2023-01-21'),
 (75,'Anuj','Delhi','2021-06-17'),
 (76,'Dhruv','Bangalore','2023-05-06'),
 (77,'Nancy','Chennai','2022-10-01'),
 (78,'Mariya','CBE','2020-04-06'),
 (79,'Neha','Bangalore','2021-03-08'),
 (80,'Murali','Chennai','2023-08-07');
 
 select * from customers;
 

create table orders(order_id int primary key,
customer_id int,
foreign key(customer_id) references customers(customer_id), 
order_date DATE,amount Decimal, 
status varchar(20));

insert into orders values(200,71,'2019-10-01',400,'Delivered'),
(201,72,'2025-12-10',1500,'Progress'),
(202,73,'2025-12-01',2500,'Dispatched'),
(203,74,'2021-03-19',3000,'Delivered'),
(204,75,'2026-01-03',4000,'Progress'),
(205,76,'2023-11-16',6800,'Delivered'),
(206,77,'2026-01-06',1200,'Dispatched'),
(207,78,'2026-01-10',3200,'Progress'),
(208,79,'2025-01-31',1115,'Delivered'),
(209,80,'2026-01-11',8900,'Progress');

select * from orders;

create table products(product_id int primary key, 
product_name varchar(20),
category varchar(20),
price decimal);


create table order_items(order_item_id int primary key, 
order_id int, 
foreign key(order_id) references orders(order_id), 
product_id int, 
foreign key(product_id) references products(product_id), 
quantity int);
Drop database Data_Analytics;
drop table employees;
drop table departments;
drop table orders;
drop table products;
