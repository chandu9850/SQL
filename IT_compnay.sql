CREATE DATABASE IT_compnay;

USE IT_compnay;

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50),
    department VARCHAR(30),
    job_title VARCHAR(50),
    salary DECIMAL(10,2),
    age INT,
    city VARCHAR(30),
    experience_years INT,
    manager_id INT,
    joining_year INT
);

INSERT INTO employees
(employee_id, employee_name, department, job_title, salary, age, city, experience_years, manager_id, joining_year)
VALUES
(1, 'Amit',   'IT',      'Developer',       60000, 25, 'Pune',      2,  6, 2024),
(2, 'Priya',  'IT',      'Developer',       75000, 28, 'Mumbai',    5,  6, 2021),
(3, 'Rahul',  'IT',      'Senior Developer',95000, 32, 'Pune',      8,  6, 2018),
(4, 'Sneha',  'HR',      'HR Executive',    50000, 26, 'Mumbai',    3,  8, 2023),
(5, 'Vikas',  'HR',      'HR Manager',      85000, 38, 'Pune',     12,  8, 2016),
(6, 'Neha',   'IT',      'IT Manager',      120000, 42, 'Bangalore',15, NULL, 2011),
(7, 'Arjun',  'Sales',   'Sales Executive', 55000, 24, 'Pune',      1,  9, 2025),
(8, 'Meera',  'HR',      'HR Director',     130000, 45, 'Delhi',    20, NULL, 2006),
(9, 'Karan',  'Sales',   'Sales Manager',   90000, 35, 'Mumbai',    10, NULL, 2016),
(10,'Pooja',  'Finance', 'Accountant',      65000, 29, 'Pune',       4, 11, 2022),
(11,'Ravi',   'Finance', 'Finance Manager', 110000, 40, 'Delhi',     14, NULL, 2012),
(12,'Anjali', 'Finance', 'Senior Accountant',80000, 34, 'Mumbai',    9, 11, 2017),
(13,'Suresh', 'IT',      'Tester',           70000, 30, 'Pune',       6,  6, 2019),
(14,'Divya',  'Sales',   'Sales Executive', 60000, 27, 'Delhi',       3,  9, 2023),
(15,'Manish', 'IT',      'Developer',        55000, 23, 'Mumbai',     1,  6, 2025);

-- find employees whose salary is greater than 
-- the avg salary
select employee_name, salary
from employees where salary>
(select avg(salary) from employees);

-- find employees wwhos salary is equal to the heighest salary
select max(salary) from employees;

select employee_name, salary
from employees where salary=
(select max(salary) from employees);

-- find employees who earn more than amit
select employee_name, salary from employees
where employee_name="amit";

select employee_name, salary
from employees where salary=60000.00;

select employee_name, salary
from employees where salary>
(select salary from employees
where employee_name="amit");