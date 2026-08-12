create database data_db;
use data_db;
select * from customer_db;

-- find or  display all unique cities
select distinct city from customer_db;

-- find customers whose age is missing
 select * from customer_db where age = "null"; 
 select * from customer_db where age = 0;

  -- find the letest orders
  select * from customer_db 
  order by order_date 
  desc limit 10;
  
  -- find the top three cities having total amount greater than 10,0000
  select city, sum(total_amount) as total_amount from customer_db
  group by city
  having total_amount>100000
  order by city desc 
  limit 3;
  
-- find cities where avg order amount is greater than 20,000
select city, avg(total_amount) 
from customer_db
group by city
having avg(total_amount)>20000;

-- find the no of customers for each memership tier
select membership_tier, count(*) 
from customer_db
group by membership_tier;

-- find the top five heighest price products
select price,product_category from customer_db
order by price desc
limit 5;

-- find emails ending with @example.com
select * from customer_db
where email like '%@example.com';

-- find customer name ending with a and price>200000
select * from customer_db
where price>2000 and customer_name like '%a';
select order_id,customer_id,customer_name,price from customer_db
where price>2000 and customer_name like '%a';

  -- find products with price between 5000 and 12000
  select * from customer_db
  where price between 5000 and 12000;
  
  -- find customers who are not pune or mumbai
  select * from customer_db
  where city !=  'pune' and city != 'mumbai';
  SELECT * FROM customer_db
WHERE city NOT IN ('Pune', 'Mumbai');
  

  
  
  
  
  