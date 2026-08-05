-- create a database 

create database college_db;
-- use above database 

use college_db;

create table students (
id int, name varchar (20), age int );

-- show the table structure
describe students;
-- add new column
alter table students add city varchar(20);
-- modify the datatype of age column
alter table students modify age bigint;

-- drop databases
select * from students;
-- use update command

update  students
set name="pratik"
where id=5;

delete from students 
where id=2;

delete from students
where id=2;
select name,city from students;
-- select (retrieve the  data)
 --- * (it fetch all columns)
-- from (to retrive the data from given table)
desc students;

select id,name,age 
from students
where age=25;

select *
from students
where city="";