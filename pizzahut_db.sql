CREATE DATABASE pizzahut_db;

USE pizzahut_db;

CREATE TABLE pizza_orders
(
    order_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    city VARCHAR(50),
    pizza_name VARCHAR(50),
    category VARCHAR(30),
    size VARCHAR(20),
    quantity INT,
    price DECIMAL(10,2),
    discount DECIMAL(10,2),
    payment_mode VARCHAR(30),
    order_status VARCHAR(30),
    order_date DATE
);

INSERT INTO pizza_orders VALUES
(1001,'Rahul Sharma','Pune','Margherita','Veg','Regular',2,299,20,'UPI','Delivered','2026-01-05'),

(1002,'Priya Patil','Mumbai','Farmhouse','Veg','Medium',1,499,30,'Credit Card','Delivered','2026-01-07'),

(1003,'Amit Kumar','Delhi','Chicken Dominator','Non-Veg','Large',2,699,50,'UPI','Delivered','2026-01-10'),

(1004,'Sneha Joshi','Pune','Peppy Paneer','Veg','Medium',3,449,40,'Cash','Delivered','2026-01-12'),

(1005,'Rohan Verma','Nashik','Chicken Tikka','Non-Veg','Regular',1,399,20,'Debit Card','Cancelled','2026-01-15'),

(1006,'Neha Singh','Mumbai','Veggie Paradise','Veg','Large',2,649,60,'UPI','Delivered','2026-01-18'),

(1007,'Vikas More','Pune','Cheese Burst','Veg','Medium',2,549,50,'Credit Card','Delivered','2026-01-20'),

(1008,'Anjali Deshmukh','Nagpur','Chicken Pepperoni','Non-Veg','Large',1,749,70,'UPI','Delivered','2026-01-22'),

(1009,'Suresh Pawar','Nashik','Margherita','Veg','Regular',4,299,30,'Cash','Delivered','2026-01-25'),

(1010,'Kiran Shah','Mumbai','Farmhouse','Veg','Large',2,649,80,'UPI','Delivered','2026-01-27'),

(1011,'Pooja Kulkarni','Pune','Paneer Makhani','Veg','Medium',1,479,25,'Debit Card','Pending','2026-02-01'),

(1012,'Akash Yadav','Delhi','Chicken Dominator','Non-Veg','Large',3,699,100,'UPI','Delivered','2026-02-03'),

(1013,'Meena Rao','Nagpur','Veggie Paradise','Veg','Regular',2,349,20,'Cash','Delivered','2026-02-05'),

(1014,'Nitin Jadhav','Pune','Chicken Tikka','Non-Veg','Medium',2,549,40,'Credit Card','Delivered','2026-02-08'),

(1015,'Riya Gupta','Mumbai','Cheese Burst','Veg','Large',1,749,90,'UPI','Cancelled','2026-02-10'),

(1016,'Manoj Kale','Nashik','Peppy Paneer','Veg','Medium',3,449,50,'Cash','Delivered','2026-02-12'),

(1017,'Simran Kaur','Delhi','Chicken Pepperoni','Non-Veg','Large',2,749,80,'UPI','Delivered','2026-02-15'),

(1018,'Arjun Mehta','Pune','Farmhouse','Veg','Regular',1,349,15,'Debit Card','Delivered','2026-02-18'),

(1019,'Divya Joshi','Mumbai','Margherita','Veg','Medium',3,399,35,'UPI','Delivered','2026-02-20'),

(1020,'Vivek Patil','Nagpur','Chicken Dominator','Non-Veg','Large',2,699,75,'Credit Card','Delivered','2026-02-22');


-- find the 5 orders with heighest final amount
select order_id,customer_name(quantity*price)-discount as total 
from pizza_orders
order by total desc 
limit 5;

-- find order having quantity gheater than avg quantity





