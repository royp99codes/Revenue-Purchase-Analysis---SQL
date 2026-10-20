create database if not exists purchase_db;
use purchase_db;

create table customers(
customer_Id int auto_increment primary key,
first_name varchar(100), last_name varchar(100), email varchar(100), city varchar(20),
created_at date
);


create table products(
product_Id int auto_increment primary key,
product_name varchar(100), category varchar(100), unit_price decimal (10,2)
);

select * from products;

create table orders(
order_Id int auto_increment primary key, order_Dt date, customer_Id int, product_Id int,
quantity int check(quantity > 0),
constraint fk_customer foreign key (customer_Id) references customers(customer_Id),
constraint fk_product foreign key (product_Id) references products(product_Id)
);

INSERT INTO customers VALUES 
(1,'Asha','Rao','asha.rao@email.com','Mumbai','2024-01-15'), (2,'Ben','Kapoor','ben.k@email.com','Delhi','2024-02-10'), (3,'Chitra','Iyer','chitra.i@email.com','Bangalore','2024-03-05'), (4,'Deepak','Singh','deepak.s@email.com','Pune','2024-04-12'), (5,'Esha','Shah','esha.shah@email.com','Chennai','2024-05-01'), (6,'Farhan','Ali','farhan.ali@email.com','Hyderabad','2024-05-10'), (7,'Gauri','Desai','gauri.desai@email.com','Ahmedabad','2024-01-25'), (8,'Harsh','Patel','harsh.p@email.com','Surat','2024-02-18'), (9,'Ishita','Rana','ishita.r@email.com','Nagpur','2024-04-03'), (10,'Jay','Verma','jay.v@email.com','Kolkata','2024-06-05'), 
 
(11,'Karan','Mishra','karan.m@email.com','Lucknow','2024-03-15'), (12,'Lata','Joshi','lata.j@email.com','Jaipur','2024-02-28'), (13,'Manoj','Nair','manoj.n@email.com','Bangalore','2024-04-25'), (14,'Nina','Roy','nina.r@email.com','Kochi','2024-03-10'), (15,'Om','Kale','om.k@email.com','Mumbai','2024-01-08'), 
 
(16,'Priya','Das','priya.d@email.com','Delhi','2024-02-20'), (17,'Qadir','Ansari','qadir.a@email.com','Pune','2024-05-12'), (18,'Rhea','Kapoor','rhea.k@email.com','Chennai','2024-01-30'), (19,'Siddharth','Bose','sid.b@email.com','Kolkata','2024-04-08'), (20,'Tanvi','Garg','tanvi.g@email.com','Ahmedabad','2024-03-03'), 
 
(21,'Uday','Shetty','uday.s@email.com','Bangalore','2024-02-22'), (22,'Vani','Jain','vani.j@email.com','Jaipur','2024-01-17'), (23,'Wasim','Qureshi','wasim.q@email.com','Hyderabad','2024-03-28'), (24,'Xenia','Fernandes','xenia.f@email.com','Goa','2024-05-19'), (25,'Yash','Mehra','yash.m@email.com','Indore','2024-06-02'), 
 
(26,'Zoya','Khan','zoya.k@email.com','Bhopal','2024-04-16'), (27,'Amit','Tripathi','amit.t@email.com','Nagpur','2024-03-09'), (28,'Bhavna','Chopra','bhavna.c@email.com','Surat','2024-02-12'), (29,'Chetan','Gill','chetan.g@email.com','Ludhiana','2024-01-11'), (30,'Divya','Bhatt','divya.b@email.com','Kochi','2024-05-06'), 
 
(31,'Eshan','Vora','eshan.v@email.com','Raipur','2024-02-25'), (32,'Fatima','Sayed','fatima.s@email.com','Lucknow','2024-04-22'), (33,'Gaurav','Malik','gaurav.m@email.com','Delhi','2024-03-21'), (34,'Heena','Rawat','heena.r@email.com','Mumbai','2024-01-13'), (35,'Imran','Shaikh','imran.s@email.com','Pune','2024-06-10'); 




INSERT INTO products VALUES (101, 'Wireless Mouse', 'Electronics', 550.00), (102, 'Bluetooth Keyboard', 'Electronics', 1250.00), (103, 'USB-C Charger', 'Electronics', 799.00), (104, 'Noise Cancelling Headphones', 'Electronics', 2999.00), (105, 'HD Webcam', 'Electronics', 1599.00), 
(106, 'LED Desk Lamp', 'Electronics', 849.00), (107, 'External Hard Drive 1TB', 'Electronics', 3200.00), (108, 'Wireless Earbuds', 'Electronics', 1450.00), (109, 'Portable Speaker', 'Electronics', 2300.00), (110, 'Smartwatch Basic', 'Electronics', 2799.00), 
 
(111, 'Notebook Set (Pack of 5)', 'Stationery', 120.00), (112, 'Gel Pen (Pack of 10)', 'Stationery', 80.00), (113, 'Sticky Notes', 'Stationery', 60.00), (114, 'Desk Organizer', 'Stationery', 250.00), (115, 'Spiral Notepad', 'Stationery', 45.00), (116, 'Bullet Journal', 'Stationery', 299.00), (117, 'Highlighter Pens (Set of 6)', 'Stationery', 110.00), (118, 'Whiteboard Markers', 'Stationery', 95.00), (119, 'Paper Clips (Box)', 'Stationery', 35.00), (120, 'Stapler Machine', 'Stationery', 130.00), 
 
(121, 'Leather Laptop Sleeve', 'Accessories', 950.00), (122, 'Travel Backpack', 'Accessories', 1999.00), (123, 'Water Bottle (Insulated)', 'Accessories', 699.00), (124, 'Office ID Card Holder', 'Accessories', 150.00), (125, 'Mobile Stand', 'Accessories', 299.00), (126, 'Eyewear Case', 'Accessories', 175.00), (127, 'Cable Organizer Pouch', 'Accessories', 325.00), (128, 'Laptop Stand', 'Accessories', 1099.00), (129, 'Desk Mat', 'Accessories', 599.00), (130, 'Mini Tripod', 'Accessories', 499.00), 
 
(131, 'Office Chair', 'Furniture', 7499.00), (132, 'Wooden Study Table', 'Furniture', 8499.00), (133, 'Bookshelf – 4 Tier', 'Furniture', 4299.00), (134, 'Folding Stool', 'Furniture', 1199.00), (135, 'Wall Mounted Whiteboard', 'Furniture', 1599.00); 




INSERT INTO orders VALUES 
(1001,'2024-06-01',1,101,2), (1002,'2024-06-01',1,103,3), (1003,'2024-06-02',2,105,1), (1004,'2024-06-03',3,108,4), (1005,'2024-06-04',3,102,1), (1006,'2024-06-04',3,109,10), (1007,'2024-06-05',4,107,1), (1008,'2024-06-06',5,104,2), (1009,'2024-06-07',5,101,1), (1010,'2024-06-08',1,110,1), (1011,'2024-06-08',2,101,1), (1012,'2024-06-09',2,108,2), (1013,'2024-06-10',4,106,1), (1014,'2024-06-10',4,103,5), (1015,'2024-06-11',5,105,1), (1016,'2024-06-12',5,109,6), (1017,'2024-06-12',3,101,1), (1018,'2024-06-13',1,102,1), (1019,'2024-06-13',1,103,2), 
(1020,'2024-06-14',2,110,1),  (1021,'2024-06-14',3 ,112,4), (1022,'2024-06-15',6 ,121,1 ), (1023,'2024-06-15',7 ,126,2 ), (1024,'2024-06-16',8 ,115,5 ), (1025,'2024-06-16',9 ,101,3 ), (1026,'2024-06-17',10,128,1 ), (1027,'2024-06-17',11,131,1 ), (1028,'2024-06-18',12,104,1 ), (1029,'2024-06-18',13,120,4 ), (1030,'2024-06-19',14,107,1 ), (1031,'2024-06-19',15,113,6 ), (1032,'2024-06-19',15,108,2 ), (1033,'2024-06-20',16,102,1 ), (1034,'2024-06-20',17,119,10), (1035,'2024-06-21',18,109,1 ), (1036,'2024-06-21',19,122,2 ), (1037,'2024-06-22',20,124,3 ), (1038,'2024-06-22',21,106,1 ), (1039,'2024-06-23',22,125,4 ), (1040,'2024-06-23',23,134,1 ), (1041,'2024-06-24',24,111,7 ), (1042,'2024-06-24',25,130,2 ), (1043,'2024-06-25',26,112,5 ), (1044,'2024-06-25',27,133,1 ), (1045,'2024-06-26',28,118,8 ), (1046,'2024-06-26',29,102,1 ), (1047,'2024-06-27',30,110,1 ), (1048,'2024-06-27',31,123,2 ), (1049,'2024-06-28',32,129,3 ), (1050,'2024-06-28',33,135,1 ); 





-- Total orders placed by each customers --
select customer_Id, count(*) as total_orders 
from orders 
group by customer_Id;



-- Total orders quantity by customer id --
select orders.customer_Id, sum(quantity) as total_orders
from orders 
group by customer_Id;



-- Revenue generated by each customers --
select c.customer_Id, concat(c.first_name," ", c.last_name) as cust_name, sum(p.unit_price * o.quantity) as Revenue
from orders as o
join customers as c on c.customer_Id = o.customer_Id
join products as p on o.product_Id = p.product_Id
group by c.customer_Id
order by Revenue desc;



-- Monthly Revenue Trend --
select date_format(order_Dt,"%y-%m") as month, sum(p.unit_price * o.quantity) as Revenue
from orders as o 
join products as p on p.product_Id = o.product_Id
group by month
order by month desc;




-- Top selling Product --
select p.product_name, sum(o.quantity) as unit_sold
from orders as o 
join products as p on o.product_Id = p.product_Id
group by p.product_name 
order by unit_sold desc
limit 5;




-- Products never Ordered --
select product_Id, product_name from products
where product_Id not in
(select distinct product_Id from orders); 



-- Average Basket size/customer --
select customer_Id, round(avg(quantity),1) as avg_qty
from orders
group by customer_Id;




-- Total revenue by product category --
select p.category, round(sum(o.quantity*p.unit_price),2) as Revenue
from orders as o
join products as p on p.product_Id = o.product_Id
group by category
order by Revenue desc; 





-- Daily orders and revenue for a given for a given week (7th June'26 - 13th June'26)
select order_Dt, count(*) as orders, sum(p.unit_price * o.quantity) as Revenue
from orders as o
left join products as p on o.product_Id = p.product_Id
where order_Dt between "2024-06-07" and "2024-06-13"
group by order_Dt;  





-- Avg order value --
select round((sum(p.unit_price * o.quantity) / count(distinct order_Id)),2) as Avg_Sales
from orders as o
join products as p on o.product_Id = p.product_Id;