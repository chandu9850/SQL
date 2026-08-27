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

-- 2.Write a query to identify clients whose total open exposure across all trades exceeds their 
-- assigned credit_limit, given Clients(client_id, credit_limit) 
-- and Trades (trade_id, client_id, status, exposure).

create table clients( client_id int , credit_limit int);
create table trades( trade_id int,client_id int,status_ varchar(50),exposure varchar(50));

select c.client_id,t.trade_id,c.credit_limit,t.status_,sum(t.exposure) as total_exposure
from clients c  join trades t on c.client_id = t.client_id 
where t.status_="open"
group by c.client_id,
c.credit_limit
having sum(t.exposure)>c.credit_limit;


