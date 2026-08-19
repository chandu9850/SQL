-- Step 1 — Create Database

CREATE DATABASE hr_analytics_db;

USE hr_analytics_db;

-- Step 2 — Create Departments Table

CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100),
    location VARCHAR(50)
);

-- Step 3 — Create Employees Table

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100),
    department_id INT,
    job_title VARCHAR(100),
    hire_date DATE,
    salary DECIMAL(12,2),
    employment_status VARCHAR(20),

    FOREIGN KEY (department_id)
    REFERENCES departments(department_id)
);

-- Step 4 — Create Attendance Table

CREATE TABLE attendance (
    attendance_id INT PRIMARY KEY,
    employee_id INT,
    attendance_date DATE,
    attendance_status VARCHAR(20),

    FOREIGN KEY (employee_id)
    REFERENCES employees(employee_id)
);

-- Step 5 — Create Promotions Table

CREATE TABLE promotions (
    promotion_id INT PRIMARY KEY,
    employee_id INT,
    promotion_date DATE,
    old_job_title VARCHAR(100),
    new_job_title VARCHAR(100),

    FOREIGN KEY (employee_id)
    REFERENCES employees(employee_id)
);

-- Insert Departments — 20 Rows

INSERT INTO departments
(department_id, department_name, location)
VALUES
(101,'Data Analytics','Mumbai'),
(102,'Finance','Delhi'),
(103,'Human Resources','Bangalore'),
(104,'Technology','Pune'),
(105,'Operations','Hyderabad'),
(106,'Marketing','Mumbai'),
(107,'Sales','Delhi'),
(108,'Customer Support','Chennai'),
(109,'Legal','Bangalore'),
(110,'Information Security','Pune'),
(111,'Product Management','Mumbai'),
(112,'Research and Development','Hyderabad'),
(113,'Quality Assurance','Pune'),
(114,'Procurement','Delhi'),
(115,'Administration','Chennai'),
(116,'Business Intelligence','Bangalore'),
(117,'Risk Management','Mumbai'),
(118,'Training and Development','Pune'),
(119,'Supply Chain','Hyderabad'),
(120,'Corporate Strategy','Delhi');

SELECT * FROM departments;

-- Insert Employees — 20+ Rows

INSERT INTO employees
(employee_id, employee_name, department_id, job_title, hire_date, salary, employment_status)
VALUES
(1,'Rahul Sharma',101,'Data Analyst','2022-01-10',850000,'Active'),
(2,'Priya Verma',102,'Financial Analyst','2021-05-15',920000,'Active'),
(3,'Amit Patel',104,'Software Engineer','2020-08-20',1200000,'Active'),
(4,'Sneha Joshi',103,'HR Specialist','2023-02-10',650000,'Active'),
(5,'Rohan Gupta',105,'Operations Analyst','2022-11-05',750000,'Resigned'),
(6,'Neha Kulkarni',106,'Marketing Executive','2023-04-12',700000,'Active'),
(7,'Arjun Mehta',107,'Sales Executive','2021-09-18',780000,'Active'),
(8,'Kavya Rao',108,'Support Executive','2024-01-20',550000,'Active'),
(9,'Vikram Singh',109,'Legal Associate','2020-06-15',1100000,'Active'),
(10,'Anjali Deshmukh',110,'Security Analyst','2022-03-25',980000,'Active'),
(11,'Saurabh Patil',111,'Product Manager','2019-07-10',1500000,'Active'),
(12,'Pooja Shah',112,'Research Scientist','2021-12-01',1150000,'Active'),
(13,'Manish Jain',113,'QA Engineer','2022-08-16',850000,'Active'),
(14,'Ritika Nair',114,'Procurement Analyst','2023-05-19',680000,'Resigned'),
(15,'Karan Malhotra',115,'Admin Executive','2020-10-11',620000,'Active'),
(16,'Isha Kapoor',116,'BI Analyst','2022-02-14',950000,'Active'),
(17,'Nikhil Joshi',117,'Risk Analyst','2021-06-21',1050000,'Active'),
(18,'Meera Iyer',118,'Training Specialist','2023-09-01',720000,'Active'),
(19,'Aditya Rao',119,'Supply Chain Analyst','2020-03-17',880000,'Resigned'),
(20,'Simran Kaur',120,'Strategy Analyst','2021-11-23',1250000,'Active'),
(21,'Deepak Yadav',101,'Senior Data Analyst','2019-04-08',1100000,'Active'),
(22,'Ayesha Khan',104,'Senior Software Engineer','2018-07-30',1450000,'Active'),
(23,'Mohit Agarwal',107,'Sales Manager','2019-02-12',1350000,'Active'),
(24,'Tanvi More',103,'HR Manager','2018-05-25',1150000,'Active'),
(25,'Rakesh Pawar',105,'Operations Manager','2017-09-14',1300000,'Active');

-- Insert Attendance Data

INSERT INTO attendance
(attendance_id, employee_id, attendance_date, attendance_status)
VALUES
(1,1,'2025-01-02','Present'),
(2,1,'2025-01-03','Present'),
(3,1,'2025-01-04','Absent'),
(4,1,'2025-01-05','Present'),

(5,2,'2025-01-02','Present'),
(6,2,'2025-01-03','Absent'),
(7,2,'2025-01-04','Present'),
(8,2,'2025-01-05','Present'),

(9,3,'2025-01-02','Present'),
(10,3,'2025-01-03','Present'),
(11,3,'2025-01-04','Present'),
(12,3,'2025-01-05','Present'),

(13,4,'2025-01-02','Present'),
(14,4,'2025-01-03','Absent'),
(15,4,'2025-01-04','Present'),
(16,4,'2025-01-05','Present'),

(17,5,'2025-01-02','Absent'),
(18,5,'2025-01-03','Absent'),
(19,5,'2025-01-04','Present'),
(20,5,'2025-01-05','Present'),

(21,6,'2025-01-02','Present'),
(22,6,'2025-01-03','Present'),
(23,6,'2025-01-04','Present'),
(24,6,'2025-01-05','Absent'),

(25,7,'2025-01-02','Present'),
(26,7,'2025-01-03','Present'),
(27,7,'2025-01-04','Absent'),
(28,7,'2025-01-05','Present'),

(29,8,'2025-01-02','Present'),
(30,8,'2025-01-03','Absent'),
(31,8,'2025-01-04','Present'),
(32,8,'2025-01-05','Present'),

(33,9,'2025-01-02','Present'),
(34,9,'2025-01-03','Present'),
(35,9,'2025-01-04','Present'),
(36,9,'2025-01-05','Present'),

(37,10,'2025-01-02','Absent'),
(38,10,'2025-01-03','Present'),
(39,10,'2025-01-04','Present'),
(40,10,'2025-01-05','Present');

-- Insert Promotions — 20 Rows

INSERT INTO promotions
(promotion_id, employee_id, promotion_date, old_job_title, new_job_title)
VALUES
(1,1,'2024-06-01','Junior Data Analyst','Data Analyst'),
(2,3,'2024-01-15','Software Engineer','Senior Software Engineer'),
(3,4,'2024-07-10','HR Executive','HR Specialist'),
(4,6,'2025-01-10','Marketing Associate','Marketing Executive'),
(5,7,'2024-09-20','Sales Associate','Sales Executive'),
(6,9,'2023-05-15','Legal Executive','Legal Associate'),
(7,10,'2024-03-25','Security Associate','Security Analyst'),
(8,11,'2022-08-10','Product Analyst','Product Manager'),
(9,12,'2024-04-05','Research Associate','Research Scientist'),
(10,13,'2024-10-15','QA Tester','QA Engineer'),
(11,16,'2024-06-20','BI Executive','BI Analyst'),
(12,17,'2023-12-01','Risk Associate','Risk Analyst'),
(13,18,'2025-02-01','Training Executive','Training Specialist'),
(14,20,'2023-11-15','Business Analyst','Strategy Analyst'),
(15,21,'2022-04-10','Data Analyst','Senior Data Analyst'),
(16,22,'2021-07-30','Software Engineer','Senior Software Engineer'),
(17,23,'2022-05-20','Sales Executive','Sales Manager'),
(18,24,'2021-08-15','HR Specialist','HR Manager'),
(19,25,'2020-09-14','Operations Analyst','Operations Manager'),
(20,2,'2024-05-18','Junior Financial Analyst','Financial Analyst');

SELECT * FROM departments;

SELECT * FROM employees;

SELECT * FROM attendance;

SELECT * FROM promotions;

SELECT COUNT(*) FROM departments;

SELECT COUNT(*) FROM employees;

SELECT COUNT(*) FROM attendance;

SELECT COUNT(*) FROM promotions;

-- LEVEL 1 — Basic Queries
-- Question 1: Display all employees

SELECT * FROM employees;

-- Question 2: Display employee name and salary

SELECT employee_name, salary
FROM employees;

-- Question 3: Employees earning more than ₹10 lakh

SELECT employee_name, salary
FROM employees
WHERE salary > 1000000;

-- Question 4: Active employees

SELECT *
FROM employees
WHERE employment_status = 'Active';

-- LEVEL 2 — Sorting
-- Highest-paid employees

SELECT employee_name, job_title, salary
FROM employees
ORDER BY salary DESC;

-- LEVEL 3 — Aggregation
-- Total employees

SELECT COUNT(*) AS total_employees
FROM employees;

-- Average salary

SELECT ROUND(AVG(salary),2) AS average_salary
FROM employees;

-- Maximum salary

SELECT MAX(salary) AS highest_salary
FROM employees;

-- Minimum salary

SELECT MIN(salary) AS lowest_salary
FROM employees;

-- LEVEL 4 — GROUP BY
-- Employees by department

SELECT
    d.department_name,
    COUNT(e.employee_id) AS employee_count
FROM departments d
LEFT JOIN employees e
    ON d.department_id = e.department_id
GROUP BY d.department_name
ORDER BY employee_count DESC;

-- LEVEL 6 — Department Salary Analysis

SELECT
    d.department_name,
    ROUND(AVG(e.salary),2) AS average_salary
FROM employees e
JOIN departments d
ON e.department_id = d.department_id
GROUP BY d.department_name
ORDER BY average_salary DESC;

-- LEVEL 7 — HAVING

-- Find departments whose average salary is greater than ₹10 lakh.

SELECT
    d.department_name,
    AVG(e.salary) AS average_salary
FROM employees e
JOIN departments d
ON e.department_id = d.department_id
GROUP BY d.department_name
HAVING AVG(e.salary) > 1000000; 

-- LEVEL 8 — CASE WHEN
-- Let's classify employees based on salary.

SELECT employee_name,salary,
    CASE
        WHEN salary >= 1200000 THEN 'High Salary'
        WHEN salary >= 800000 THEN 'Medium Salary'
        ELSE 'Low Salary'
    END AS salary_category
FROM employees;

-- LEVEL 9 — Attrition Analysis
-- Total resigned employees

SELECT COUNT(*) AS resigned_employees
FROM employees
WHERE employment_status = 'Resigned';

-- Attrition Rate

SELECT ROUND(100.0 * SUM(
CASE
WHEN employment_status = 'Resigned' THEN 1
ELSE 0
END
) / COUNT(*),2 ) AS attrition_rate
FROM employees;




