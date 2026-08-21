select * from departments;


-- (AGGREGATE) Write a query to count total employees.
select count(*) from employees;

-- (AGGREGATE) Count total female employees.
select count(*) as total_female from employees where gender='f';

-- (AGGREGATE) Find average salary of all employees.
select avg(salary) as total_avg from salaries;

-- (AGGREGATE) Find maximum salary in salaries table.
select max(salary) as total_max from salaries;

-- (AGGREGATE) Find minimum salary.
select min(salary) as min from salaries;

-- (AGGREGATE) Calculate total salary paid.
select  sum(salary) as total_salary from salaries;

-- (AGGREGATE) Count employees in each department.



-- (AGGREGATE) Find average salary per employee.



(AGGREGATE) Find highest salary per employee.
(AGGREGATE) Find departments having more than 100 employees.
(AGGREGATE) Count employees by gender.
(AGGREGATE) Find total salary per department.
(AGGREGATE) Find average salary per department.
(AGGREGATE) Count total managers.
(AGGREGATE) Count distinct departments.
(AGGREGATE) Find salary range (max-min).
(AGGREGATE) Count employees hired per year.
(AGGREGATE) Find max salary per department.
(AGGREGATE) Find employees with avg salary > 60000.
(AGGREGATE) Count employees per title.
(AGGREGATE) Find min salary per department.
(AGGREGATE) Find total salary per title.
(AGGREGATE) Count employees with salary > 50000.
(AGGREGATE) Find avg salary by gender.
(AGGREGATE) Find departments with lowest avg salary.
🔵



select 