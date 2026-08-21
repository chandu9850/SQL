CREATE DATABASE blinkit_db;

USE blinkit_db;
 CREATE TABLE blinkit_orders (
    order_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    city VARCHAR(30),
    area VARCHAR(40),
    category VARCHAR(30),
    product_name VARCHAR(50),
    quantity INT,
    order_amount DECIMAL(10,2),
    delivery_fee DECIMAL(8,2),
    payment_method VARCHAR(20),
    order_status VARCHAR(20),
    delivery_partner VARCHAR(50),
    delivery_time_minutes INT,
    customer_rating DECIMAL(2,1),
    order_date DATE
);

INSERT INTO blinkit_orders
(order_id, customer_name, city, area, category, product_name,
 quantity, order_amount, delivery_fee, payment_method,
 order_status, delivery_partner, delivery_time_minutes,
 customer_rating, order_date)
VALUES

(1, 'Amit', 'Pune', 'Pimpri', 'Grocery', 'Rice', 
 2, 850.00, 30.00, 'UPI', 'Delivered', 'Rahul', 18, 4.5, '2026-08-01'),

(2, 'Priya', 'Pune', 'Wakad', 'Dairy', 'Milk',
 3, 210.00, 20.00, 'Cash', 'Delivered', 'Suresh', 15, 4.2, '2026-08-01'),

(3, 'Rohan', 'Mumbai', 'Andheri', 'Snacks', 'Chips',
 5, 450.00, 25.00, 'UPI', 'Delivered', 'Amit', 22, 4.0, '2026-08-02'),

(4, 'Sneha', 'Mumbai', 'Bandra', 'Beverages', 'Juice',
 4, 520.00, 30.00, 'Card', 'Delivered', 'Vikas', 25, 4.7, '2026-08-02'),

(5, 'Vijay', 'Delhi', 'Rohini', 'Grocery', 'Wheat Flour',
 2, 700.00, 35.00, 'UPI', 'Delivered', 'Raj', 20, 4.3, '2026-08-03'),

(6, 'Neha', 'Delhi', 'Saket', 'Personal Care', 'Shampoo',
 2, 620.00, 30.00, 'Card', 'Delivered', 'Manoj', 28, 4.1, '2026-08-03'),

(7, 'Karan', 'Pune', 'Baner', 'Snacks', 'Biscuits',
 6, 360.00, 20.00, 'UPI', 'Delivered', 'Rahul', 17, 4.6, '2026-08-04'),

(8, 'Pooja', 'Pune', 'Hinjewadi', 'Beverages', 'Cold Drink',
 5, 500.00, 25.00, 'Cash', 'Delivered', 'Suresh', 21, 4.0, '2026-08-04'),

(9, 'Arjun', 'Mumbai', 'Powai', 'Grocery', 'Sugar',
 3, 450.00, 30.00, 'UPI', 'Delivered', 'Amit', 19, 4.4, '2026-08-05'),

(10, 'Kavita', 'Mumbai', 'Thane', 'Dairy', 'Cheese',
 2, 680.00, 25.00, 'Card', 'Delivered', 'Vikas', 24, 4.8, '2026-08-05'),

(11, 'Rahul', 'Delhi', 'Dwarka', 'Snacks', 'Namkeen',
 4, 400.00, 20.00, 'UPI', 'Delivered', 'Raj', 18, 4.2, '2026-08-06'),

(12, 'Anjali', 'Delhi', 'Karol Bagh', 'Beverages', 'Coffee',
 2, 560.00, 25.00, 'Cash', 'Delivered', 'Manoj', 23, 4.5, '2026-08-06'),

(13, 'Sameer', 'Pune', 'Kothrud', 'Personal Care', 'Face Wash',
 3, 750.00, 30.00, 'UPI', 'Delivered', 'Rahul', 26, 4.3, '2026-08-07'),

(14, 'Meena', 'Pune', 'Aundh', 'Grocery', 'Oil',
 2, 900.00, 35.00, 'Card', 'Delivered', 'Suresh', 20, 4.7, '2026-08-07'),

(15, 'Nikhil', 'Mumbai', 'Borivali', 'Snacks', 'Cookies',
 5, 625.00, 25.00, 'UPI', 'Delivered', 'Amit', 21, 4.1, '2026-08-08'),

(16, 'Riya', 'Mumbai', 'Dadar', 'Beverages', 'Tea',
 3, 450.00, 20.00, 'Cash', 'Delivered', 'Vikas', 18, 4.6, '2026-08-08'),

(17, 'Sanjay', 'Delhi', 'Noida', 'Grocery', 'Dal',
 4, 800.00, 30.00, 'UPI', 'Delivered', 'Raj', 22, 4.4, '2026-08-09'),

(18, 'Divya', 'Delhi', 'Gurgaon', 'Dairy', 'Butter',
 2, 520.00, 25.00, 'Card', 'Delivered', 'Manoj', 27, 4.0, '2026-08-09'),

(19, 'Akash', 'Pune', 'Viman Nagar', 'Snacks', 'Chips',
 8, 720.00, 20.00, 'UPI', 'Delivered', 'Rahul', 16, 4.9, '2026-08-10'),

(20, 'Isha', 'Pune', 'Hadapsar', 'Beverages', 'Juice',
 4, 480.00, 30.00, 'Cash', 'Delivered', 'Suresh', 24, 4.2, '2026-08-10'),

(21, 'Varun', 'Mumbai', 'Malad', 'Personal Care', 'Soap',
 6, 540.00, 25.00, 'UPI', 'Delivered', 'Amit', 20, 4.3, '2026-08-11'),

(22, 'Tanvi', 'Mumbai', 'Ghatkopar', 'Grocery', 'Rice',
 3, 1275.00, 35.00, 'Card', 'Delivered', 'Vikas', 23, 4.7, '2026-08-11'),

(23, 'Mohit', 'Delhi', 'Lajpat Nagar', 'Snacks', 'Chocolates',
 5, 750.00, 20.00, 'UPI', 'Delivered', 'Raj', 19, 4.5, '2026-08-12'),

(24, 'Shweta', 'Delhi', 'Janakpuri', 'Beverages', 'Green Tea',
 3, 630.00, 25.00, 'Cash', 'Delivered', 'Manoj', 26, 4.1, '2026-08-12'),

(25, 'Deepak', 'Pune', 'Magarpatta', 'Grocery', 'Sugar',
 5, 750.00, 30.00, 'UPI', 'Delivered', 'Rahul', 19, 4.4, '2026-08-13'),

(26, 'Nisha', 'Pune', 'Pashan', 'Dairy', 'Milk',
 5, 350.00, 20.00, 'Card', 'Delivered', 'Suresh', 14, 4.8, '2026-08-13'),

(27, 'Manish', 'Mumbai', 'Kurla', 'Snacks', 'Biscuits',
 7, 420.00, 25.00, 'UPI', 'Delivered', 'Amit', 28, 3.9, '2026-08-14'),

(28, 'Komal', 'Mumbai', 'Vile Parle', 'Grocery', 'Wheat Flour',
 3, 1050.00, 30.00, 'Cash', 'Delivered', 'Vikas', 22, 4.6, '2026-08-14'),

(29, 'Yash', 'Delhi', 'Pitampura', 'Personal Care', 'Toothpaste',
 4, 480.00, 20.00, 'UPI', 'Delivered', 'Raj', 17, 4.7, '2026-08-15'),

(30, 'Pallavi', 'Delhi', 'Model Town', 'Dairy', 'Paneer',
 3, 600.00, 25.00, 'Card', 'Delivered', 'Manoj', 21, 4.5, '2026-08-15');
 select * from blinkit_orders;
 
 -- assign a unique row number to every order basesd on order date
 select order_id,customer_name,order_date,
 row_number() over (order by order_date)as rows_number
 from blinkit_orders;
 -- assign row number separetly for each city
 select order_id, customer_name,city,order_date,
 row_number() over  (partition by city order by order_date) as rows_number 
 from blinkit_orders;
 select *from blinkit_orders;
 -- return ranks from all orders according to order amount 
 select order_id,customer_name,
 
 -- rank orders within each category based on order amount 
 select order_id,customer_name,category,order_amount,
 rank() over(partition by order_amount) as rows_number from blinkit_orders;
 
-- find total order amount across all orders for every row
select * from  blinkit_orders;
select order_id,customer_name,product_name,order_amount,
sum(order_id) over() as total_orders
from blinkit_orders;

-- find avg amount of each city 
SELECT city,order_amount,
AVG(order_amount) OVER(PARTITION BY city) AS avg_amount
FROM blinkit_orders;
select * from blinkit_orders;
-- assign row numbers based on highest order amount
select order_id,customer_name,order_amount,
rank () over(order by order_amount desc) as ranks
from blinkit_orders;

-- find dense rank order based order amount
select order_id,customer_name,order_amount,
dense_rank() over(order by order_amount desc) as amount_ranks
from blinkit_orders;

-- LAG notes
-- lag- gets a value from previous row.
-- find previous order amount 
select * from blinkit_orders;
select order_id,order_date,order_amount,
lag(order_amount,2) over()
from blinkit_orders;

-- find previous order for each city
select order_id,customer_name

-- notes
-- lead- get the value from next row
-- find diff b/w current and next order_amount
-- find next order_amount
select order_id,order_amount,
lead(order_amount) over(order by order_id) - order_amount as difference
from blinkit_orders;
SELECT order_id,order_amount,
    LEAD(order_amount) OVER () - order_amount AS difference
FROM blinkit_orders;

-- 1st value return the 1st value in the window or category.

-- find highest order amount in each city using 1st values
select order_id,customer_name,city,order_amount,
first_value(order_amount) over(partition by city order by order_amount desc) as highest_order_window
from blinkit_orders;

-- CTE stands for common table expression .
-- it is temporary name result set that we created from a simple select statement that can be use in a sub sequent select statement
-- we candefine CTE by adding a with clause directly before select, insert, update delete or merge statement
-- syntax
-- with cte_name as 
--(select col_names, from table_name)
-- select col_names from cte_name;

-- find all delivered orders meesho
witt delivered_orders as
(select * from meesho_orders where order_status= 'delivererd')
select * from delivered_orders;

-- find 2nd highest price using cte
with 

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

