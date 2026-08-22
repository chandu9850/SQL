CREATE DATABASE ecommerce_db;

USE ecommerce_db;

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    city VARCHAR(50),
    mobile_no VARCHAR(15)
);



INSERT INTO customers VALUES
(101,'Rahul Sharma','Mumbai','9876543210'),
(102,'Priya Singh','Pune','9876543211'),
(103,'Amit Kumar','Delhi','9876543212'),
(104,'Sneha Patil','Nagpur','9876543213'),
(105,'Rohan Desai','Mumbai','9876543214'),
(106,'Pooja Mehta','Pune','9876543215'),
(107,'Neha Joshi','Delhi','9876543216'),
(108,'Karan Shah','Ahmedabad','9876543217'),
(109,'Anjali Gupta','Hyderabad','9876543218'),
(110,'Tarun Kumar','Bangalore','9876543219'),
(111,'Deepa Singh','Mumbai','9876543220'),
(112,'Vishal Desai','Pune','9876543221'),
(113,'Pooja Nair','Delhi','9876543222'),
(114,'Varun Nair','Nagpur','9876543223'),
(115,'Manish Bose','Mumbai','9876543224'),
(116,'Jay Bose','Pune','9876543225'),
(117,'Mohit Rao','Delhi','9876543226'),
(118,'Rahul Desai','Ahmedabad','9876543227'),
(119,'Kiran Joshi','Hyderabad','9876543228'),
(120,'Amit Mehta','Bangalore','9876543229');

select * from customers;

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product_name VARCHAR(50),
    amount DECIMAL(10,2),
    order_date DATE
);

INSERT INTO orders VALUES
(1,101,'Laptop',55000,'2025-01-01'),
(2,102,'Mobile',25000,'2025-01-02'),
(3,103,'Headphones',3000,'2025-01-03'),
(4,104,'Keyboard',1500,'2025-01-04'),
(5,105,'Mouse',1000,'2025-01-05'),
(6,106,'Monitor',12000,'2025-01-06'),
(7,107,'Tablet',18000,'2025-01-07'),
(8,108,'Printer',8000,'2025-01-08'),
(9,109,'Laptop',60000,'2025-01-09'),
(10,110,'Mobile',30000,'2025-01-10'),
(11,111,'Mouse',1200,'2025-01-11'),
(12,112,'Keyboard',1800,'2025-01-12'),
(13,113,'Monitor',14000,'2025-01-13'),
(14,114,'Tablet',20000,'2025-01-14'),
(15,115,'Laptop',65000,'2025-01-15'),
(16,116,'Mobile',28000,'2025-01-16'),
(17,117,'Headphones',3500,'2025-01-17'),
(18,118,'Printer',8500,'2025-01-18'),
(19,119,'Laptop',58000,'2025-01-19'),
(20,120,'Monitor',15000,'2025-01-20');


select * from customers;
select * from orders;


-- create inner join
select * from customers inner join orders 
on customers.customer_id=orders.customer_id;

-- right join
select * from customers right join orders 
on customers.customer_id=orders.customer_id;

-- left join
select * from customers left join orders 
on customers.customer_id=orders.customer_id;

-- display customers whose order amount is greater than 20000
select customer_name, amount from customers inner join orders
on customers.customer_id=orders.customer_id
where amount>20000;

-- find customers whose purchased a laptop 
select customer_name, product_name from customers inner join orders
on customers.customer_id=orders.customer_id
where product_name='laptop';

-- display customer name  order date for all orders 
select customer_name, order_date from customers inner join orders
on customers.customer_id=orders.customer_id;

-- display all orders along with customer details
SELECT
    orders.order_id,
    orders.order_date,
    orders.product_name,
    orders.customer_id,
    customers.customer_name,
    customers.city
FROM orders
RIGHT JOIN customers
ON orders.customer_id = customers.customer_id;

-- find customer who have not any order
SELECT customers.*
FROM customers
LEFT JOIN orders
ON customers.customer_id = orders.customer_id
WHERE orders.customer_id IS NULL;

-- display customer name and product name including customer without order
SELECT 
    c.customer_name,
    o.product_name
FROM customers c
LEFT JOIN orders o
ON c.customer_id = o.customer_id;


SELECT customers.*
FROM customers
LEFT JOIN orders
ON customers.customer_id = orders.customer_id
WHERE orders.customer_id IS NULL;




