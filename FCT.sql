create database fct;
use fct;
create table placement (id int,name varchar(20),course varchar(20) );
select * from placement;
insert into placement values (1, 'shubham', 'data analyst');
alter table placement add package int;

update placement set package = 300000 where id = 1;
   ------ safe sql 
set sql_safe_updates=0;   
UPDATE placement
SET course = 'Data Sciencist'
WHERE id = 2;
select * from placement;

alter table placement modify package varchar(20);
SELECT *
FROM placement
WHERE package = '5 LPA';
insert into placement values (2, 'Akash', 'data analyst','4 LPA');
insert into placement values (3, 'Dnyanu', 'data analyst','5 LPA');

