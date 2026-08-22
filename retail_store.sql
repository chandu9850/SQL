CREATE DATABASE retail_store;

USE retail_store;

CREATE TABLE customers_2(
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    city VARCHAR(30),
    age INT,
    mobile_no VARCHAR(15),
    membership_type VARCHAR(20),
    join_date DATE
);

INSERT INTO customers_2 VALUES
(101,'Rahul Sharma','Mumbai',25,'9876543210','Gold','2024-01-10'),
(102,'Priya Singh','Pune',28,'9876543211','Silver','2024-01-12'),
(103,'Amit Kumar','Delhi',30,'9876543212','Gold','2024-01-15'),
(104,'Sneha Patil','Mumbai',24,'9876543213','Silver','2024-01-18'),
(105,'Rohan Desai','Pune',32,'9876543214','Gold','2024-01-20'),
(106,'Pooja Mehta','Delhi',27,'9876543215','Platinum','2024-01-25'),
(107,'Neha Joshi','Mumbai',29,'9876543216','Gold','2024-02-01'),
(108,'Karan Shah','Pune',31,'9876543217','Silver','2024-02-03'),
(109,'Anjali Gupta','Delhi',26,'9876543218','Gold','2024-02-05'),
(110,'Tarun Kumar','Mumbai',35,'9876543219','Platinum','2024-02-08'),
(111,'Deepa Singh','Pune',25,'9876543220','Gold','2024-02-10'),
(112,'Vishal Desai','Delhi',28,'9876543221','Silver','2024-02-15'),
(113,'Pooja Nair','Mumbai',30,'9876543222','Gold','2024-02-18'),
(114,'Varun Nair','Pune',33,'9876543223','Platinum','2024-02-20'),
(115,'Manish Bose','Delhi',29,'9876543224','Silver','2024-02-25'),
(116,'Jay Bose','Mumbai',27,'9876543225','Gold','2024-03-01'),
(117,'Mohit Rao','Pune',31,'9876543226','Gold','2024-03-05'),
(118,'Rahul Desai','Delhi',26,'9876543227','Silver','2024-03-08'),
(119,'Kiran Joshi','Mumbai',34,'9876543228','Platinum','2024-03-10'),
(120,'Amit Mehta','Pune',28,'9876543229','Gold','2024-03-12');

CREATE TABLE orders_3(
    order_id INT PRIMARY KEY,
    customer_id INT,
    product_name VARCHAR(50),
    category VARCHAR(30),
    amount DECIMAL(10,2),
    quantity INT,
    order_date DATE,

    FOREIGN KEY(customer_id)
    REFERENCES customers_2(customer_id)
);

INSERT INTO orders_3 VALUES
(1,101,'Laptop','Electronics',55000,1,'2025-01-01'),
(2,102,'Mobile','Electronics',25000,1,'2025-01-02'),
(3,103,'Laptop','Electronics',55000,1,'2025-01-03'),
(4,104,'Shoes','Fashion',3000,2,'2025-01-04'),
(5,105,'Watch','Fashion',5000,1,'2025-01-05'),
(6,106,'Laptop','Electronics',55000,1,'2025-01-06'),
(7,107,'Mobile','Electronics',25000,1,'2025-01-07'),
(8,108,'Headphones','Electronics',3000,2,'2025-01-08'),
(9,109,'Laptop','Electronics',55000,1,'2025-01-09'),
(10,110,'Shoes','Fashion',3000,2,'2025-01-10'),
(11,111,'Watch','Fashion',5000,1,'2025-01-11'),
(12,112,'Laptop','Electronics',55000,1,'2025-01-12'),
(13,113,'Mobile','Electronics',25000,1,'2025-01-13'),
(14,114,'Headphones','Electronics',3000,2,'2025-01-14'),
(15,115,'Laptop','Electronics',55000,1,'2025-01-15'),
(16,116,'Shoes','Fashion',3000,2,'2025-01-16'),
(17,117,'Watch','Fashion',5000,1,'2025-01-17'),
(18,118,'Laptop','Electronics',55000,1,'2025-01-18'),
(19,119,'Mobile','Electronics',25000,1,'2025-01-19'),
(20,120,'Headphones','Electronics',3000,2,'2025-01-20');


select * from customers_2;
select * from orders_3;

-- display customer name and membership category
select customer_name, membership_type, 
case
when membership_type='platinum' then "VIP Customer"
when membership_type='gold' then "premium Customer"
else "regular customer"
end 
from customers_2;

-- classify 
select customer_name, age, 
case
when age<25 then "young"
when age between 25 and 30 then "adult"
else "senior"
end
from customers_2;

--  classify products on their order_amount if amt=>50,000 expensive, 10,000 
SELECT
    product_name,
    amount,
    CASE
        WHEN amount >= 50000 THEN 'Expensive'
        WHEN amount >= 10000 THEN 'Moderate'
        ELSE 'Affordable'
    END AS price_category
FROM orders_3;

-- show products base on discount category use amount as a refrence column 
-- amt<50,000 then use 10% discount
-- when is >20,000 then 5% discount

select product_name, amount,
case
when amount>50000 then "10% discount"
when amount>20000 then "5% discount"
else "No discount"
end as discount_table
from orders_3;




-- Q1. Customer Order Details with Membership Category
select 
c.customer_name, 
c.city, 
o.product_name, 
o.amount,
case
when c.membership_type='platinum' then 'vip'
when c.membership_type='gold' then 'premium'
when c.membership_type='silver' then 'regular'
else 'others'
end as membership_type 
from customers_2 c 
inner join orders_3 o 
on c.customer_id=o.customer_id;














