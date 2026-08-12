CREATE DATABASE education_db;

USE education_db;

CREATE TABLE mentors (
    trainer_id INT PRIMARY KEY,
    trainer_name VARCHAR(50),
    department VARCHAR(50),
    age INT,
    salary DECIMAL(10,2),
    location VARCHAR(50)
);

INSERT INTO mentors VALUES
(101,'Tarun Kumar','Python',28,45000,'Pune'),
(102,'Sneha Patil','Power BI',30,50000,'Mumbai'),
(103,'Rahul Sharma','SQL',32,55000,'Delhi'),
(104,'Amit Verma','Python',29,48000,'Pune'),
(105,'Priya Singh','Excel',27,42000,'Nagpur'),

(106,'Rohan Desai','Tableau',35,60000,'Mumbai'),
(107,'Neha Joshi','SQL',31,52000,'Delhi'),
(108,'Karan Shah','Python',26,43000,'Pune'),
(109,'Anjali Gupta','Power BI',29,49000,'Hyderabad'),
(110,'Vishal Rao','Excel',34,51000,'Nagpur'),

(111,'Pooja Mehta','Tableau',33,58000,'Mumbai'),
(112,'Deepa Bose','Python',28,46000,'Pune'),
(113,'Varun Das','SQL',37,62000,'Delhi'),
(114,'Sara Khan','Power BI',30,50000,'Hyderabad'),
(115,'Mohit Verma','Excel',29,45000,'Nagpur'),

(116,'Jay Patel','Tableau',32,57000,'Mumbai'),
(117,'Kavya Rao','Python',27,44000,'Pune'),
(118,'Nisha Singh','SQL',35,61000,'Delhi'),
(119,'Tanvi Das','Power BI',31,53000,'Hyderabad'),
(120,'Aarav Shah','Excel',28,43000,'Nagpur'),

(121,'Vidya Nair','Python',34,56000,'Pune'),
(122,'Dev Kumar','Tableau',36,64000,'Mumbai'),
(123,'Ritika Sharma','SQL',29,50000,'Delhi'),
(124,'Siddharth Rao','Power BI',32,54000,'Hyderabad'),
(125,'Fatima Khan','Excel',27,42000,'Nagpur'),

(126,'Raj Mehta','Python',30,51000,'Pune'),
(127,'Kiran Joshi','Tableau',33,59000,'Mumbai'),
(128,'Om Verma','SQL',38,65000,'Delhi'),
(129,'Pooja Rao','Power BI',29,48000,'Hyderabad'),
(130,'Manish Gupta','Excel',35,52000,'Nagpur');

select * from mentors;

-- 1. Find top 3 departments with highest average salary
select department, avg(salary) as h_a_s
from mentors 
group by department
order by h_a_s desc
limit 3;

-- 2.  Find locations having more than 5 trainers
select location, count(trainer_id) as trainers
from mentors
group by location 
having trainers>5;


-- 3. Find average salary of trainers older than 30 in each department
select department,avg(salary) as avg_salary
from mentors
where  age < 30
group by department;

select department, age, avg(salary) as average_salary
from mentors
where age < 30
group by department, age;


-- 4. Find departments where average salary is greater than 50,000
select department, avg(salary) as avg_
from mentors
group by department
having avg_>50000;

-- 5. Find top 5 highest-paid trainers
select * from mentors
order by salary desc
limit 5;

-- 6. Find second highest-paid trainer
select * from mentors
order by salary desc
limit 1 offset 1;

-- 7. Find departments with total salary greater than 300000
select department, sum(salary) as total_salary
from mentors
group by department
having total_salary>300000;

-- 8. Find locations having average age greater than 30
select location, avg(age) as age_
from mentors
group by location
having age_>30;

-- 9. Find top 3 locations with highest average salary
select location, avg(salary) as avg_
from mentors
group by location
order by avg_ desc
limit 3;

-- 10. Display trainers from position 11 to 20 sorted by salary
select * from mentors
order by salary desc
limit 10 offset 10;
