CREATE DATABASE sbi_bank_db;

USE sbi_bank_db;

CREATE TABLE customers (
    account_no BIGINT PRIMARY KEY,
    customer_name VARCHAR(50),
    mobile_no VARCHAR(15),
    account_type VARCHAR(20),
    age INT,
    opening_date DATE,
    location VARCHAR(30)
);

INSERT INTO customers VALUES
(1000000001,'Aarav Sharma','9876543201','Saving',25,'2022-01-10','Mumbai'),
(1000000002,'Priya Singh','9876543202','Current',30,'2021-05-15','Pune'),
(1000000003,'Rahul Verma','9876543203','Salary',28,'2023-02-12','Delhi'),
(1000000004,'Sneha Patil','9876543204','Saving',24,'2022-08-22','Nagpur'),
(1000000005,'Amit Kumar','9876543205','Current',35,'2020-11-11','Hyderabad'),
(1000000006,'Pooja Mehta','9876543206','Saving',29,'2021-09-09','Bangalore'),
(1000000007,'Rohan Desai','9876543207','Salary',31,'2023-01-18','Mumbai'),
(1000000008,'Neha Joshi','9876543208','Saving',27,'2022-04-10','Pune'),
(1000000009,'Karan Shah','9876543209','Current',33,'2020-07-14','Delhi'),
(1000000010,'Anjali Gupta','9876543210','Saving',26,'2021-12-20','Nagpur'),

(1000000011,'Tarun Kumar','9876543211','Salary',29,'2022-02-15','Mumbai'),
(1000000012,'Vidya Bose','9876543212','Saving',32,'2020-03-21','Pune'),
(1000000013,'Kavya Chowdhury','9876543213','Current',25,'2021-08-17','Delhi'),
(1000000014,'Aarav Mehta','9876543214','Saving',30,'2022-10-11','Hyderabad'),
(1000000015,'Deepa Singh','9876543215','Salary',28,'2023-04-08','Bangalore'),
(1000000016,'Vishal Desai','9876543216','Saving',36,'2019-06-05','Mumbai'),
(1000000017,'Vineeta Singh','9876543217','Current',27,'2021-11-09','Pune'),
(1000000018,'Pooja Nair','9876543218','Saving',31,'2020-05-30','Delhi'),
(1000000019,'Varun Nair','9876543219','Salary',34,'2022-01-01','Nagpur'),
(1000000020,'Manish Bose','9876543220','Saving',38,'2018-09-19','Hyderabad'),

(1000000021,'Priya Nair','9876543221','Current',24,'2023-07-11','Mumbai'),
(1000000022,'Usha Desai','9876543222','Saving',41,'2017-05-15','Pune'),
(1000000023,'Sneha Kapoor','9876543223','Salary',28,'2021-10-10','Delhi'),
(1000000024,'Zara Patel','9876543224','Saving',26,'2022-06-21','Nagpur'),
(1000000025,'Pooja Mishra','9876543225','Current',35,'2019-02-28','Hyderabad'),
(1000000026,'Dev Iyer','9876543226','Saving',29,'2020-12-01','Bangalore'),
(1000000027,'Zara Mehta','9876543227','Salary',27,'2023-03-03','Mumbai'),
(1000000028,'Om Mehta','9876543228','Saving',32,'2021-01-20','Pune'),
(1000000029,'Mohit Rao','9876543229','Current',39,'2018-08-18','Delhi'),
(1000000030,'Zara Bose','9876543230','Saving',23,'2023-09-05','Nagpur'),

(1000000031,'Jay Bose','9876543231','Salary',34,'2020-04-14','Hyderabad'),
(1000000032,'Dev Rao','9876543232','Saving',30,'2021-11-28','Bangalore'),
(1000000033,'Aarav Singh','9876543233','Current',28,'2022-07-07','Mumbai'),
(1000000034,'Sandeep Rao','9876543234','Saving',42,'2017-03-17','Pune'),
(1000000035,'Sakshi Verma','9876543235','Salary',26,'2023-01-26','Delhi'),
(1000000036,'Rahul Desai','9876543236','Saving',36,'2019-09-12','Nagpur'),
(1000000037,'Kiran Joshi','9876543237','Current',31,'2020-06-08','Hyderabad'),
(1000000038,'Rohan Rao','9876543238','Saving',27,'2022-05-24','Bangalore'),
(1000000039,'Zara Rao','9876543239','Salary',25,'2023-08-11','Mumbai'),
(1000000040,'Amit Mehta','9876543240','Saving',38,'2018-12-12','Pune'),

(1000000041,'Raj Bose','9876543241','Current',40,'2017-10-01','Delhi'),
(1000000042,'Sneha Bose','9876543242','Saving',29,'2021-04-04','Nagpur'),
(1000000043,'Sara Mehta','9876543243','Salary',26,'2022-03-16','Hyderabad'),
(1000000044,'Vidya Rao','9876543244','Saving',35,'2019-05-29','Bangalore'),
(1000000045,'Varun Das','9876543245','Current',32,'2020-07-22','Mumbai'),
(1000000046,'Priya Gupta','9876543246','Saving',28,'2023-06-09','Pune'),
(1000000047,'Tanvi Das','9876543247','Salary',30,'2021-02-13','Delhi'),
(1000000048,'Nisha Singh','9876543248','Saving',33,'2020-01-01','Nagpur'),
(1000000049,'Tanvi Chowdhury','9876543249','Current',27,'2022-09-09','Hyderabad'),
(1000000050,'Deepa Bose','9876543250','Saving',37,'2018-11-25','Bangalore');

select * from customers;

-- 1)  Display the second oldest customer.
select * from customers order by opening_date asc limit 1 offset 1;

-- 2)  Find the number of customers in each account type.
 select account_type, count(*) as  total_customers
          from customers 
          group by  account_type;

-- 3)  Display customers whose name starts with 'A' and ends with 'a'.
select * from customers 
where  customer_name like 'A%a';

-- 4)  Display customers opened account before 2021.
select * from customers
 where opening_date < '2021-01-01';
 
 -- 5)  Display all Saving account customers from Mumbai or Pune.
select * from customers where account_type='saving' and  location in ('Mumbai','Pune');

-- 6)  Find the city having maximum customers.
select location, count(*) as total_customers
		  from customers
          group by location 
		  order by total_customers DESC
          limit 1;
          
-- 7) Display customers whose age is between 25 and 30 and account type is Saving.
select * from customers where age between 25 and 30 and account_type='saving';  

-- 8)  Display customers whose account number is divisible by 5.
select * from customers where account_no %5=0;        

-- 9)  Display top 5 oldest customers.
select * from customers order by opening_date asc limit 5;

select account_type, count(*) as total_acc
from customers
group by account_type
having total_acc>15;


