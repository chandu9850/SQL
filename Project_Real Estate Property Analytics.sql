/* 
Real Estate Property Analytics 🏠 Analyze properties, buyers, agents, sales, 
and rentals using SQL to understand market trends, optimize pricing, 
and improve business performance.
This project reflects real-world SQL analysis performed by Real Estate Analysts,
Property Management teams, Sales Analysts, and Business Intelligence professionals 
to optimize pricing, monitor sales performance, and identify market trends.

1. Project Objective
The goal is to analyze:

🏠 Property listings
💰 Property sales
🏘️ Rental properties
👨‍💼 Agent performance
👥 Customer behavior
📍 City-wise demand
📊 Property prices
📅 Sales trends
🔄 Listing-to-sale conversion

*/

-- 2. Create Database
CREATE DATABASE real_estate_db;

USE real_estate_db;

-- 3. Create Agents Table

CREATE TABLE agents (
    agent_id INT PRIMARY KEY,
    agent_name VARCHAR(100),
    city VARCHAR(50),
    experience_years INT
);

-- Insert Agents

INSERT INTO agents VALUES
(101,'Amit Sharma','Mumbai',8),
(102,'Priya Singh','Delhi',6),
(103,'Rahul Mehta','Pune',10),
(104,'Sneha Patel','Bangalore',5),
(105,'Vikas Kumar','Hyderabad',7),
(106,'Neha Kapoor','Chennai',4),
(107,'Arjun Malhotra','Mumbai',9),
(108,'Pooja Nair','Pune',6),
(109,'Karan Shah','Delhi',11),
(110,'Meera Joshi','Bangalore',8);

SELECT * FROM agents;

-- 4. Create Customers Table

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    city VARCHAR(50),
    customer_type VARCHAR(20)
);

-- Insert Customers

INSERT INTO customers VALUES
(1,'Rahul Verma','Mumbai','Buyer'),
(2,'Anjali Gupta','Delhi','Tenant'),
(3,'Rohan Patel','Pune','Buyer'),
(4,'Neha Sharma','Bangalore','Tenant'),
(5,'Aakash Shah','Hyderabad','Buyer'),
(6,'Kavita Rao','Mumbai','Buyer'),
(7,'Suresh Iyer','Chennai','Tenant'),
(8,'Priyanka Das','Pune','Buyer'),
(9,'Manish Jain','Delhi','Buyer'),
(10,'Simran Kaur','Bangalore','Tenant'),
(11,'Ravi Deshmukh','Mumbai','Buyer'),
(12,'Divya Menon','Hyderabad','Tenant'),
(13,'Nitin Agarwal','Delhi','Buyer'),
(14,'Swati Kulkarni','Pune','Tenant'),
(15,'Mohit Verma','Bangalore','Buyer');

SELECT * FROM customers;

-- 5. Create Properties Table

CREATE TABLE properties (
    property_id INT PRIMARY KEY,
    property_type VARCHAR(50),
    city VARCHAR(50),
    bedrooms INT,
    listing_price DECIMAL(12,2),
    listing_date DATE,
    agent_id INT,

    FOREIGN KEY (agent_id)
        REFERENCES agents(agent_id)
);

-- 6. Insert Properties


INSERT INTO properties VALUES
(1001,'Apartment','Mumbai',2,8500000,'2025-01-05',101),
(1002,'Villa','Delhi',4,22000000,'2025-01-08',102),
(1003,'Apartment','Pune',3,9500000,'2025-01-12',103),
(1004,'Studio','Bangalore',1,4200000,'2025-01-15',104),
(1005,'Villa','Hyderabad',5,28000000,'2025-01-18',105),

(1006,'Apartment','Mumbai',3,12500000,'2025-02-02',107),
(1007,'Villa','Pune',4,18500000,'2025-02-05',103),
(1008,'Apartment','Delhi',2,7800000,'2025-02-10',109),
(1009,'Studio','Bangalore',1,3900000,'2025-02-14',110),
(1010,'Apartment','Chennai',2,6500000,'2025-02-18',106),

(1011,'Villa','Mumbai',5,35000000,'2025-03-01',101),
(1012,'Apartment','Pune',2,7200000,'2025-03-04',108),
(1013,'Apartment','Hyderabad',3,8800000,'2025-03-08',105),
(1014,'Villa','Delhi',5,32000000,'2025-03-12',109),
(1015,'Apartment','Bangalore',3,10500000,'2025-03-15',104),

(1016,'Studio','Mumbai',1,5500000,'2025-04-02',107),
(1017,'Apartment','Chennai',3,9200000,'2025-04-06',106),
(1018,'Villa','Hyderabad',4,24000000,'2025-04-10',105),
(1019,'Apartment','Pune',3,11000000,'2025-04-15',108),
(1020,'Villa','Bangalore',4,27000000,'2025-04-20',110);

SELECT * FROM properties;

-- 7. Create Transactions Table

CREATE TABLE transactions (
    transaction_id INT PRIMARY KEY,
    property_id INT,
    customer_id INT,
    transaction_type VARCHAR(20),
    transaction_date DATE,
    sale_price DECIMAL(12,2),

    FOREIGN KEY (property_id)
        REFERENCES properties(property_id),

    FOREIGN KEY (customer_id)
        REFERENCES customers(customer_id)
);

-- 8. Insert Transactions

INSERT INTO transactions VALUES
(5001,1001,1,'Sale','2025-02-01',8300000),
(5002,1002,2,'Rent','2025-02-03',45000),
(5003,1003,3,'Sale','2025-02-05',9200000),
(5004,1004,4,'Rent','2025-02-08',28000),
(5005,1005,5,'Sale','2025-02-12',27500000),

(5006,1006,6,'Sale','2025-03-01',12000000),
(5007,1007,8,'Sale','2025-03-10',17800000),
(5008,1008,9,'Rent','2025-03-12',35000),
(5009,1009,10,'Rent','2025-03-15',25000),
(5010,1010,7,'Rent','2025-03-20',30000),

(5011,1011,11,'Sale','2025-04-05',34000000),
(5012,1012,14,'Rent','2025-04-08',22000),
(5013,1013,12,'Sale','2025-04-12',8500000),
(5014,1014,13,'Sale','2025-04-20',31000000),
(5015,1015,15,'Sale','2025-04-25',10200000),

(5016,1016,1,'Rent','2025-05-03',27000),
(5017,1017,7,'Sale','2025-05-08',9000000),
(5018,1018,5,'Sale','2025-05-15',23500000);


/* 
9. Understand the Relationships
Our database looks like this:

AGENTS
   |
   | agent_id
   ↓
PROPERTIES
   |
   | property_id
   ↓
TRANSACTIONS
   |
   | customer_id
   ↓
CUSTOMERS
*/

/*
10. Basic Data Exploration
Q1. Display all properties
Q2. Display only property name/type, city and price
11. Total Number of Properties
12. Total Sold Properties
13. Total Rental Properties
14. Total Sales Revenue
15. Average Property Listing Price
16. Most Expensive Property
17. Most Expensive Property Using MAX
18. Cheapest Property
19. Properties by City
20. Average Property Price by City
21. Highest Average Property Price City
22. Properties Above Average Price
23. Property Price Category Using CASE
>= ₹2 Crore     → Luxury
>= ₹1 Crore     → Premium
< ₹1 Crore      → Affordable
24. Count Properties by Price Category
25. INNER JOIN — Property + Agent
26. Property + Agent + Transaction
27. Property + Customer + Agent
28. LEFT JOIN — Find Unsold Properties
29. Agent-wise Property Count
30. Top Performing Agents by Sales Revenue
31. Top Agent  Revenue
32. Revenue by City
33. Revenue by Property Type
34. Number of Sales by Property Type
35. Average Selling Price
36. Average Rent
37. Highest Selling Property
38. Average Bedrooms Sold
39. Monthly Sales Trend
40. Property Listing Trend
41. Property Demand by City
42. Highest Demand City

                REAL ESTATE ANALYTICS
                         │
        ┌────────────────┼────────────────┐
        ↓                ↓                ↓
    Properties         Agents          Customers
        │                │                │
        └────────────────┼────────────────┘
                         ↓
                   Transactions
                         │
                         ↓
                  SQL Analysis
                         │
       ┌─────────────────┼─────────────────┐
       ↓                 ↓                 ↓
   Sales Analysis    Agent Analysis    Market Analysis
       │                 │                 │
       ↓                 ↓                 ↓
 Revenue             Top Agent        Demand City
 Avg Price           Conversion       Price Trends
 Selling Time        Sales            Property Trends
       │                 │                 │
       └─────────────────┼─────────────────┘
                         ↓
                  Executive Dashboard
                  
*/
SELECT * FROM agents;
SELECT * FROM customers;
SELECT * FROM properties;
SELECT * FROM transactions;

-- 10. Basic Data Exploration
-- Q1. Display all properties
SELECT * FROM properties;
-- Q2. Display only property name/type, city and price
select  property_type,city 
from properties;

-- 11. Total Number of Properties
select count(*) as total_count
from properties;

-- 12. Total Sold Properties
select p.property_id,t.transaction_type,count(*) as total_count
from properties p join transactions t
on p.property_id=t.property_id
where t.transaction_type="sale"
group by p.property_id;

-- 13. Total Rental Properties
select p.property_id,t.transaction_type,count(*) as total_count
from properties p join transactions t
on p.property_id=t.property_id
where t.transaction_type="rent"
group by p.property_id;

-- 14. Total Sales Revenue
select sum(t.sale_price) as total_reneve
from properties p join transactions t
on p.property_id=t.property_id
where t.transaction_type="sale";

-- 15. Average Property Listing Price
select avg(listing_price) as avg_
from properties;

-- 16. Most Expensive Property
SELECT  listing_price
FROM properties
WHERE listing_price = (
    SELECT MAX(listing_price)
    FROM properties
);

-- 17. Most Expensive Property Using MAX
select max(listing_price) as most_
from properties;

-- 18. Cheapest Property
select min(listing_price) as most_
from properties;

-- 19. Properties by City
SELECT city, COUNT(*) AS total_properties
FROM properties
GROUP BY city;

-- 20. Average Property Price by City
SELECT city, avg(listing_price) as avg_properties
FROM properties
GROUP BY city;

-- 21. Highest Average Property Price City
SELECT city, avg(listing_price) as avg_properties
FROM properties
GROUP BY city
order by avg_properties desc
limit 1;

-- 22. Properties Above Average Price
select * from properties
where listing_price>(SELECT avg(listing_price) as avg_properties
FROM properties);

-- 23. Property Price Category Using CASE
-- >= ₹2 Crore     → Luxury
-- >= ₹1 Crore     → Premium
-- < ₹1 Crore      → Affordable
select property_id,listing_price,
CASE 
    WHEN listing_price>= 20000000 THEN 'Luxury'
    WHEN listing_price>= 10000000 THEN 'Premium'
	WHEN listing_price< 10000000  THEN 'Affordable'
    ELSE 'garib'
END as table_type
from properties;

-- 24. Count Properties by Price Category
SELECT
    CASE
        WHEN listing_price >= 20000000 THEN 'Luxury'
        WHEN listing_price >= 10000000 THEN 'Premium'
        ELSE 'Affordable'
    END AS price_category,
    COUNT(*) AS total_properties
FROM properties
GROUP BY price_category;

-- 25. INNER JOIN — Property + Agent
select * from properties p inner join agents a 
on p.agent_id=a.agent_id;

-- 26. Property + Agent + Transaction
select * from agents a  inner join  properties p
on a.agent_id=p.agent_id
inner join transactions t
on  p.property_id=t.property_id;

-- 27. Property + Customer + Agent
select * from agents a  join  properties p
on a.agent_id=p.agent_id
 join customers c
on p.property_id=c.customer_id;

-- 28. LEFT JOIN — Find Unsold Properties
select transaction_type from properties p  left join  transactions t
on  p.property_id=t.property_id
where transaction_type="rent";

-- 29. Agent-wise Property Count
SELECT agent_id,
       COUNT(*) AS property_count
FROM properties
GROUP BY agent_id;

-- 30. Top Performing Agents by Sales Revenue
SELECT a.agent_id,
       a.agent_name,
       SUM(t.sale_price) AS total_sales_revenue
FROM agents a
JOIN properties p
    ON a.agent_id = p.agent_id
JOIN transactions t
    ON p.property_id = t.property_id
WHERE t.transaction_type = 'sale'
GROUP BY a.agent_id, a.agent_name
ORDER BY total_sales_revenue DESC;

-- 31. Top Agent  Revenue
SELECT a.agent_id,
       a.agent_name,
       SUM(t.sale_price) AS total_sales_revenue
FROM agents a
JOIN properties p
    ON a.agent_id = p.agent_id
JOIN transactions t
    ON p.property_id = t.property_id
WHERE t.transaction_type = 'sale'
GROUP BY a.agent_id, a.agent_name
ORDER BY total_sales_revenue DESC
limit 1;

-- 32. Revenue by City
SELECT 
  p.city,
       SUM(t.sale_price) AS total_sales_revenue
FROM agents a
JOIN properties p
    ON a.agent_id = p.agent_id
JOIN transactions t
    ON p.property_id = t.property_id
WHERE t.transaction_type = 'sale'
GROUP BY p.city
ORDER BY total_sales_revenue DESC;

-- 33. Revenue by Property Type
SELECT 
  p.property_type,
       SUM(t.sale_price) AS total_sales_revenue
FROM agents a
JOIN properties p
    ON a.agent_id = p.agent_id
JOIN transactions t
    ON p.property_id = t.property_id
WHERE t.transaction_type = 'sale'
GROUP BY p.property_type
ORDER BY total_sales_revenue DESC;

-- 34. Number of Sales by Property Type
SELECT p.property_type,
       COUNT(*) AS number_of_sales
FROM properties p
JOIN transactions t
    ON p.property_id = t.property_id
WHERE t.transaction_type = 'sale'
GROUP BY p.property_type;

-- 35. Average Selling Price
SELECT round(AVG(p.listing_price),2) AS average_selling_price
FROM properties p
JOIN transactions t
    ON p.property_id = t.property_id
WHERE t.transaction_type = 'sale';

-- 36. Average Rent
SELECT AVG(t.sale_price) AS average_rent
FROM transactions t
WHERE t.transaction_type = 'rent';

-- 37. Highest Selling Property
SELECT p.property_id,
       t.sale_price 
FROM properties p
JOIN transactions t
    ON p.property_id = t.property_id
WHERE t.transaction_type = 'sale'
ORDER BY t.sale_price DESC
LIMIT 1;

-- 38. Average Bedrooms Sold
SELECT AVG(p.bedrooms) AS average_bedrooms_sold
FROM properties p
JOIN transactions t
    ON p.property_id = t.property_id
WHERE t.transaction_type = 'sale';

-- 39. Monthly Sales Trend
SELECT DATE_FORMAT(t.transaction_date, '%Y-%m') AS month,
       SUM(t.sale_price) AS total_sales
FROM transactions t
WHERE t.transaction_type = 'sale'
GROUP BY DATE_FORMAT(t.transaction_date, '%Y-%m')
ORDER BY month;

-- 40. Property Listing Trend
SELECT DATE_FORMAT(listing_date, '%Y-%m') AS month,
       COUNT(*) AS total_listings
FROM properties
GROUP BY DATE_FORMAT(listing_date, '%Y-%m')
ORDER BY month;

-- 41. Property Demand by City
SELECT p.city,
       COUNT(*) AS property_demand
FROM properties p
JOIN transactions t
    ON p.property_id = t.property_id
WHERE t.transaction_type = 'sale'
GROUP BY p.city
ORDER BY property_demand DESC;

-- 42. Highest Demand City
SELECT p.city,
       COUNT(*) AS property_demand
FROM properties p
JOIN transactions t
    ON p.property_id = t.property_id
WHERE t.transaction_type = 'sale'
GROUP BY p.city
ORDER BY property_demand DESC
LIMIT 2;
