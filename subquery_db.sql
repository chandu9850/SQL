Create database subquery;
Use  subquery;

CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);

INSERT INTO departments VALUES
(10,'HR'),
(20,'IT'),
(30,'Sales'),
(40,'Finance');

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    gender CHAR(1),
    salary DECIMAL(10,2),
    dept_id INT,
    manager_id INT,
    city VARCHAR(50),
    FOREIGN KEY(dept_id) REFERENCES departments(dept_id)
);

INSERT INTO employees VALUES
(101,'Amit','M',60000,20,NULL,'Pune'),
(102,'Priya','F',45000,10,101,'Mumbai'),
(103,'Rahul','M',70000,20,101,'Pune'),
(104,'Sneha','F',50000,30,103,'Delhi'),
(105,'Karan','M',35000,30,103,'Mumbai'),
(106,'Neha','F',80000,40,101,'Pune'),
(107,'Rohit','M',55000,20,103,'Nagpur'),
(108,'Pooja','F',30000,10,102,'Nashik'),
(109,'Vikas','M',90000,40,101,'Delhi'),
(110,'Anjali','F',65000,30,103,'Pune');

CREATE TABLE projects (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(50),
    dept_id INT,
    budget DECIMAL(12,2),
    FOREIGN KEY(dept_id) REFERENCES departments(dept_id)
);

INSERT INTO projects VALUES
(1,'ERP',20,500000),
(2,'Recruitment',10,150000),
(3,'CRM',30,300000),
(4,'Audit',40,250000),
(5,'Website',20,400000);

CREATE TABLE employee_project (
    emp_id INT,
    project_id INT,
    PRIMARY
KEY(emp_id,project_id),
    FOREIGN KEY(emp_id) REFERENCES employees(emp_id),
    FOREIGN KEY(project_id) REFERENCES projects(project_id)
);

INSERT INTO employee_project VALUES
(101,1),
(103,1),
(107,5),
(102,2),
(108,2),
(104,3),
(105,3),
(110,3),
(106,4),
(109,4);

-- 1) Find employees earning more than the average salary.
select emp_name,emp_id,salary 
from employees
where salary>(select avg(salary) from employees);

select avg(salary) from employees;

-- 2) Find employee(s) getting the maximum salary.
select emp_id , emp_name,salary
from employees
where salary = (select max(salary)  from employees);


-- 3) Find employees working in departments that have projects.
SELECT DISTINCT e.emp_name, p.dept_id
FROM employees e
INNER JOIN projects p
ON e.dept_id = p.dept_id;

-- 4) Find employees whose department has no project.
SELECT emp_name,dept_id
FROM employees
where dept_id not in (select dept_id from departments);

select * from projects;
select * from departments;

-- 5) Find employees working on projects whose budget is greater than ₹3,00,000.
select emp_name, gender from employees
where emp_id in(select emp_id from employee_project
where project_id in (select project_id from projects where budget>300000));