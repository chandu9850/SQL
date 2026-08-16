create database practice;
use practice;

create table practice_1(practice_id int primary key, first_last varchar(50), salary int, city varchar(50));
insert into practice_1 values(1,'chandu waghmare',50000,'parbhani');
insert into practice_1 values(2,'rahul chavan',40000,'petwadaj');
insert into practice_1 values(3,'ram deshmukh',60000,'hingoli');
insert into practice_1 values(4,'ritesh tate',70000,'loha');
insert into practice_1 values(5,'sahebrao rahire',80000,'nanded');

select * from practice_1;
set sql_safe_updates=0;

ALTER TABLE practice_1
ADD age INT;

ALTER TABLE practice_1
MODIFY salary DECIMAL(10,2);

ALTER TABLE practice_1
RENAME COLUMN first_last TO full_name;

ALTER TABLE practice_1
DROP COLUMN age;

ALTER TABLE practice_1
RENAME TO practice_employee;

UPDATE practice_1
SET salary = 60000
WHERE practice_id = 2;

UPDATE practice_1
SET salary = 75000,
    city = 'Nanded'
WHERE practice_id = 4;

DELETE FROM practice_1
WHERE practice_id = 5;

SELECT * FROM practice_1 WHERE salary = 50000;
SELECT * FROM practice_1 WHERE salary != 50000;
SELECT * FROM practice_1 WHERE salary > 50000;
SELECT * FROM practice_1 WHERE salary < 50000;
SELECT * FROM practice_1 WHERE salary >= 50000;
SELECT * FROM practice_1 WHERE salary <= 50000;

SELECT *
FROM practice_1
WHERE salary BETWEEN 40000 AND 70000;




