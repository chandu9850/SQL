create database tables;
use tables;
create table tablee 
( id int primary key,
name varchar(50),
salary decimal(10,2)
);

insert into tablee values(1,'A',10000),
(2,'B',10000),(3,'C',20000),(4,'D',30000);

update tablee set salary=40000 where id=2;
update tablee set salary=10000 where id=4;

select * from tablee;

select e1.name, e1.salary
from tablee e1 join 
tablee e2 on e1.id=e2.id
where e1.salary=10000;

SELECT DISTINCT e1.*
FROM tablee e1
JOIN tablee e2
    ON e1.salary = e2.salary
    AND e1.id <> e2.id;


SELECT salary FROM employees GROUP by salary
Having count(*)>1;

SELECT name, salary
FROM tablee
WHERE salary IN (
    SELECT salary
    FROM tablee
    GROUP BY salary
    HAVING COUNT(*) > 1
);
