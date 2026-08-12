show databases;
use college_db;

 show tables;
 describe students;
use chandu_;
show tables;
describe student;
select * from student;
TRUNCATE TABLE student;


create table chandu(name int,salary int);
alter table chandu
modify name varchar(20);

insert into chandu values ('ritesh',100000),
						  ('chandu',20000);
                          select * from chandu;
