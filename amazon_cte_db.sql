CREATE DATABASE amazon_cte_db;

USE amazon_cte_db;

CREATE TABLE amazon_orders
(
    order_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    city VARCHAR(50),
    category VARCHAR(50),
    product_name VARCHAR(100),
    quantity INT,
    price DECIMAL(10,2),
    discount DECIMAL(10,2),
    payment_mode VARCHAR(30),
    order_status VARCHAR(30),
    order_date DATE
);

INSERT INTO amazon_orders VALUES
(101, 'Rahul', 'Pune', 'Electronics', 'Laptop', 1, 55000, 5000, 'UPI', 'Delivered', '2026-01-05'),

(102, 'Priya', 'Mumbai', 'Electronics', 'Headphones', 2, 2500, 300, 'Credit Card', 'Delivered', '2026-01-08'),

(103, 'Amit', 'Delhi', 'Fashion', 'Shoes', 1, 3500, 500, 'UPI', 'Delivered', '2026-01-10'),

(104, 'Sneha', 'Pune', 'Home', 'Mixer Grinder', 1, 4500, 400, 'Cash', 'Cancelled', '2026-01-12'),

(105, 'Rohan', 'Bangalore', 'Electronics', 'Mobile', 1, 30000, 3000, 'Credit Card', 'Delivered', '2026-01-15'),

(106, 'Neha', 'Mumbai', 'Fashion', 'Kurti', 3, 1200, 200, 'UPI', 'Delivered', '2026-01-18'),

(107, 'Vikas', 'Delhi', 'Home', 'Chair', 2, 3500, 500, 'Debit Card', 'Delivered', '2026-01-20'),

(108, 'Pooja', 'Pune', 'Beauty', 'Face Cream', 4, 800, 100, 'UPI', 'Delivered', '2026-01-22'),

(109, 'Karan', 'Bangalore', 'Electronics', 'Smart Watch', 2, 5000, 700, 'Credit Card', 'Delivered', '2026-01-25'),

(110, 'Anjali', 'Mumbai', 'Home', 'Bedsheet', 2, 1500, 200, 'Cash', 'Pending', '2026-01-28'),

(111, 'Suresh', 'Delhi', 'Electronics', 'Tablet', 1, 22000, 2000, 'UPI', 'Delivered', '2026-02-02'),

(112, 'Meena', 'Pune', 'Fashion', 'Saree', 2, 2500, 300, 'Credit Card', 'Delivered', '2026-02-05'),

(113, 'Arjun', 'Bangalore', 'Home', 'Sofa', 1, 25000, 3000, 'Debit Card', 'Delivered', '2026-02-08'),

(114, 'Kavita', 'Mumbai', 'Beauty', 'Perfume', 2, 3000, 400, 'UPI', 'Cancelled', '2026-02-10'),

(115, 'Manish', 'Pune', 'Electronics', 'Keyboard', 3, 1500, 200, 'UPI', 'Delivered', '2026-02-12'),

(116, 'Riya', 'Delhi', 'Fashion', 'Jeans', 2, 2200, 300, 'Credit Card', 'Delivered', '2026-02-15'),

(117, 'Nitin', 'Bangalore', 'Beauty', 'Shampoo', 3, 700, 100, 'Cash', 'Delivered', '2026-02-18'),

(118, 'Asha', 'Mumbai', 'Electronics', 'Monitor', 1, 15000, 1500, 'UPI', 'Delivered', '2026-02-20'),

(119, 'Deepak', 'Pune', 'Home', 'Table', 1, 7000, 800, 'Debit Card', 'Pending', '2026-02-22'),

(120, 'Sonal', 'Delhi', 'Electronics', 'Printer', 1, 12000, 1000, 'Credit Card', 'Delivered', '2026-02-25');

select * from amazon_orders;

-- find avg order value by city
select city, avg(quantity*price-discount) as avg_value
from amazon_orders
where order_status="delivered"
group by city;

-- classified orders amount as high or medium or low value based on final amount if < = 20000 then high
-- if final <= 5000 then medium else low
with order_amount as
(select order_id,customer_name,(quantity*price) -discount as final_order_amount
from amazon_orders)
select order_id, customer_name,
final_order_amount,
case
when final_order_amount>=20000 then "high"
when final_order_amount>=5000 then "medium"
else "low"
end as customer_order_status
from order_amount;


-- same question in subquery
select
order_id,
customer_name,
final_order_amount,
case
when final_order_amount>=20000 then "high"
when final_order_amount>=5000 then "medium"
else "low"
end as order_status
from 
(select 
order_id,
customer_name,
(quantity*price)-discount as final_order_amount from amazon_orders) as ordered;




