CREATE DATABASE meesho_db;

USE meesho_db;

CREATE TABLE meesho_orders
(
    order_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    city VARCHAR(50),
    state VARCHAR(50),
    category VARCHAR(50),
    product_name VARCHAR(100),
    quantity INT,
    price DECIMAL(10,2),
    discount DECIMAL(10,2),
    payment_mode VARCHAR(30),
    order_status VARCHAR(30),
    order_date DATE
);

INSERT INTO meesho_orders VALUES
(1001,'Amit','Pune','Maharashtra','Fashion','Kurta',2,799,100,'UPI','Delivered','2026-01-05'),
(1002,'Sneha','Mumbai','Maharashtra','Beauty','Face Cream',3,499,50,'COD','Delivered','2026-01-07'),
(1003,'Rahul','Delhi','Delhi','Electronics','Bluetooth Speaker',1,1499,200,'UPI','Delivered','2026-01-10'),
(1004,'Priya','Pune','Maharashtra','Fashion','Saree',2,1299,150,'Card','Delivered','2026-01-12'),
(1005,'Neha','Bangalore','Karnataka','Home','Bedsheet',3,899,100,'UPI','Cancelled','2026-01-15'),
(1006,'Rohit','Mumbai','Maharashtra','Electronics','Earphones',2,999,100,'COD','Delivered','2026-01-18'),
(1007,'Pooja','Delhi','Delhi','Beauty','Lipstick',4,399,50,'UPI','Delivered','2026-01-20'),
(1008,'Karan','Pune','Maharashtra','Home','Curtains',2,699,100,'Card','Delivered','2026-01-22'),
(1009,'Anjali','Bangalore','Karnataka','Fashion','Top',5,599,75,'UPI','Delivered','2026-01-25'),
(1010,'Vikas','Mumbai','Maharashtra','Home','Kitchen Set',1,1599,200,'COD','Returned','2026-01-28'),

(1011,'Amit','Pune','Maharashtra','Electronics','Smart Watch',1,2499,300,'UPI','Delivered','2026-02-02'),
(1012,'Sneha','Mumbai','Maharashtra','Fashion','Jeans',2,1199,150,'Card','Delivered','2026-02-04'),
(1013,'Rahul','Delhi','Delhi','Home','Wall Clock',2,499,50,'UPI','Delivered','2026-02-06'),
(1014,'Priya','Pune','Maharashtra','Beauty','Shampoo',4,699,100,'COD','Delivered','2026-02-08'),
(1015,'Neha','Bangalore','Karnataka','Electronics','Power Bank',2,899,100,'UPI','Delivered','2026-02-10'),
(1016,'Rohit','Mumbai','Maharashtra','Fashion','T-Shirt',3,499,50,'Card','Cancelled','2026-02-12'),
(1017,'Pooja','Delhi','Delhi','Home','Pillow',4,399,50,'UPI','Delivered','2026-02-15'),
(1018,'Karan','Pune','Maharashtra','Beauty','Perfume',2,799,100,'COD','Delivered','2026-02-18'),
(1019,'Anjali','Bangalore','Karnataka','Electronics','Headphones',1,1999,250,'UPI','Delivered','2026-02-20'),
(1020,'Vikas','Mumbai','Maharashtra','Fashion','Jacket',1,1799,200,'Card','Returned','2026-02-22'),

(1021,'Amit','Pune','Maharashtra','Home','Table Lamp',2,599,50,'UPI','Delivered','2026-03-01'),
(1022,'Sneha','Mumbai','Maharashtra','Beauty','Makeup Kit',1,1299,150,'COD','Delivered','2026-03-03'),
(1023,'Rahul','Delhi','Delhi','Fashion','Shirt',3,699,100,'UPI','Delivered','2026-03-05'),
(1024,'Priya','Pune','Maharashtra','Electronics','Keyboard',2,899,100,'Card','Delivered','2026-03-07'),
(1025,'Neha','Bangalore','Karnataka','Home','Cushion',5,299,25,'UPI','Delivered','2026-03-10'),
(1026,'Rohit','Mumbai','Maharashtra','Beauty','Face Wash',3,399,50,'COD','Delivered','2026-03-12'),
(1027,'Pooja','Delhi','Delhi','Electronics','USB Cable',4,299,25,'UPI','Delivered','2026-03-15'),
(1028,'Karan','Pune','Maharashtra','Fashion','Kurti',2,999,100,'Card','Delivered','2026-03-18'),
(1029,'Anjali','Bangalore','Karnataka','Home','Storage Box',3,499,50,'UPI','Cancelled','2026-03-20'),
(1030,'Vikas','Mumbai','Maharashtra','Electronics','Mouse',2,599,50,'COD','Delivered','2026-03-22'); 





-- CTE stands for common table expression .
-- it is temporary name result set that we created from a simple select statement that can be use in a sub sequent select statement
-- we candefine CTE by adding a with clause directly before select, insert, update delete or merge statement
-- syntax
-- with cte_name as 
-- (select col_names, from table_name)
-- select col_names from cte_name;

-- find all delivered orders meesho
with delivered_orders as
(select * from meesho_orders where order_status= 'delivererd')
select * from delivered_orders;

-- find 2nd highest price using cte


-- find categories whose total_sale are greater than 5k.

SELECT 
    category, 
    SUM(price * quantity) AS total_sales
FROM meesho_orders
WHERE order_status = 'delivered'
GROUP BY category
HAVING SUM(price * quantity) > 5000;

select category, sum(price*quantity) 
from meesho_orders
where order_status='delivered'
group by category 
having sum(price*quantity)>5000;

SELECT category, SUM(price * quantity) AS total_sales
FROM meesho_orders
WHERE order_status = 'delivered'
GROUP BY category
HAVING SUM(price * quantity) > 5000;

-- find customers with sales greater than 3000
-- find city generating the heighest sales 


