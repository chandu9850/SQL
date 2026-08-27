CREATE DATABASE travel_engine_db;
 USE travel_engine_db;
 CREATE TABLE passengers ( passenger_id INT PRIMARY KEY,
 passenger_name VARCHAR(50),
 age INT, city VARCHAR(50),
 destination VARCHAR(50),
 ticket_price DECIMAL(10,2),
 travel_date DATE, 
 travel_class VARCHAR(20),
 booking_status VARCHAR(20) ); 
 INSERT INTO passengers VALUES
 (101,'Rahul Sharma',25,'Mumbai','Goa',5000,'2025-06-01','Economy','Confirmed'),
 (102,'Priya Singh',28,'Pune','Delhi',6500,'2025-06-03','Business','Confirmed'),
 (103,'Amit Kumar',32,'Delhi','Manali',8000,'2025-06-05','Economy','Waiting'),
 (104,'Sneha Patil',24,'Nagpur','Goa',5500,'2025-06-07','Economy','Confirmed'),
 (105,'Rohan Desai',30,'Mumbai','Kashmir',12000,'2025-06-10','Business','Confirmed'),
 (106,'Pooja Mehta',27,'Pune','Jaipur',7000,'2025-06-11','Economy','Cancelled'),
 (107,'Neha Joshi',26,'Delhi','Shimla',8500,'2025-06-12','Business','Confirmed'),
 (108,'Karan Shah',35,'Ahmedabad','Goa',6000,'2025-06-14','Economy','Confirmed'), 
 (109,'Anjali Gupta',29,'Hyderabad','Delhi',7500,'2025-06-15','Economy','Waiting'), 
 (110,'Tarun Kumar',31,'Bangalore','Kashmir',13000,'2025-06-18','Business','Confirmed'),
 (111,'Deepa Singh',23,'Mumbai','Goa',5200,'2025-06-20','Economy','Confirmed'),
 (112,'Vishal Desai',34,'Pune','Manali',9000,'2025-06-22','Business','Confirmed'),
 (113,'Pooja Nair',28,'Delhi','Jaipur',6800,'2025-06-23','Economy','Waiting'),
 (114,'Varun Nair',36,'Nagpur','Goa',6200,'2025-06-25','Business','Confirmed'), 
 (115,'Manish Bose',40,'Mumbai','Kashmir',14000,'2025-06-26','Business','Confirmed'), 
 (116,'Jay Bose',27,'Pune','Delhi',6600,'2025-06-27','Economy','Confirmed'),
 (117,'Mohit Rao',29,'Delhi','Shimla',8800,'2025-06-28','Business','Cancelled'),
 (118,'Rahul Desai',33,'Ahmedabad','Goa',6100,'2025-06-29','Economy','Confirmed'),
 (119,'Kiran Joshi',26,'Hyderabad','Jaipur',7200,'2025-06-30','Economy','Confirmed'),
 (120,'Amit Mehta',37,'Bangalore','Kashmir',15000,'2025-07-01','Business','Confirmed');
 
 select * from passengers;
 
 
 -- store procedure
 -- no parameter passing values
delimiter $$
create procedure show_passengers()
begin
select * from passengers;
end $$
delimiter ;

 call show_passengers();
 
 
 
 delimiter $$
create procedure display_passengers()
begin
select passenger_name,city,age,ticket_price from passengers;
end $$
delimiter ;

call display_passengers();



-- parameter pass values
delimiter $$
create procedure abc_age(in age int)
begin
select passenger_name,city,age,ticket_price from passengers
where age=age;
end $$
delimiter ;

call abc_age(28);



delimiter $$
create procedure pqr_name(in a_name varchar(50))
begin
select passenger_name,city,age,ticket_price from passengers
where passenger_name=a_name;
end $$
delimiter ;

call pqr_name("rahul sharma");



-- two parameter pass values
delimiter $$
create procedure xyz_name(in a_name varchar(50),a_age int )
begin
select passenger_name,city,age,ticket_price from passengers
where passenger_name=a_name
and age=a_age;
end $$
delimiter ;

call xyz_name("rahul sharma",25);


-- name and age pass
delimiter $$
create procedure jkl_name(in a_name varchar(50),a_age int )
begin
select passenger_name,age from passengers
where passenger_name=a_name
and age=a_age;
end $$
delimiter ;

call jkl_name("rahul sharma",25);



delimiter $$
create procedure b_check(in a_name varchar(50),b_status VARCHAR(20) )
begin
select passenger_name,city,age,ticket_price,booking_status from passengers
where passenger_name=a_name
and booking_status= b_status ;
end $$
delimiter ;

call b_check("rahul sharma",'Confirmed');



-- how to delete procedure
drop procedure booking_check;

-- how to display the store procedure from database
show procedure status
where db="travel_engine_db";

-- how to show the single procedure
show create procedure xyz_name;

delimiter $$
create procedure avg_ticket_price()
begin
select avg(ticket_price) from passengers;
end $$
delimiter ;

call avg_ticket_price();



-- 1. display_passengers()
delimiter $$
create procedure show_passenger()
begin
select *from passengers;
end $$
delimiter ;

call show_passenger();

-- 2. get_age(IN age)
delimiter $$
create procedure get_age(in a_age int)
begin
select age from passengers
where age=a_age;
end $$
delimiter ;
drop procedure get_age;
call get_age(25);

-- 3. get_passenger_name(IN name)
delimiter $$
create procedure get_passenger_name(in a_name varchar(50))
begin
select passenger_name,city,age,ticket_price from passengers
where passenger_name=a_name;
end $$
delimiter ;

call get_passenger_name("rahul sharma");


-- 4. get_destination(IN destination)
delimiter $$
create procedure get_destination(in get_destination varchar(50))
begin
select passenger_name,city,age,ticket_price,destination from passengers
where destination=get_destination;
end $$
delimiter ;

call get_destination("Kashmir");

-- 5. get_city(IN city)
delimiter $$
create procedure get_city(in get_city varchar(50))
begin
select passenger_name,city,age,ticket_price,destination from passengers
where city=get_city;
end $$
delimiter ;

call get_city("mumbai");  




