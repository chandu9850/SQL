CREATE DATABASE rapido_db;

USE rapido_db;

CREATE TABLE rapido_rides
(
    ride_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    driver_name VARCHAR(50),
    pickup_city VARCHAR(50),
    drop_city VARCHAR(50),
    ride_type VARCHAR(30),
    distance_km DECIMAL(5,2),
    fare DECIMAL(10,2),
    payment_mode VARCHAR(20),
    ride_status VARCHAR(20),
    ride_date DATE
);

INSERT INTO rapido_rides VALUES
(1, 'Rahul', 'Amit', 'Pune', 'Hinjewadi', 'Bike', 12.5, 180, 'UPI', 'Completed', '2026-08-01'),

(2, 'Priya', 'Vijay', 'Pune', 'Kothrud', 'Auto', 8.2, 150, 'Cash', 'Completed', '2026-08-02'),

(3, 'Sneha', 'Rohit', 'Mumbai', 'Andheri', 'Bike', 10.5, 200, 'UPI', 'Completed', '2026-08-03'),

(4, 'Amit', 'Suresh', 'Pune', 'Wakad', 'Auto', 7.5, 130, 'Card', 'Completed', '2026-08-04'),

(5, 'Neha', 'Raj', 'Mumbai', 'Bandra', 'Bike', 9.8, 220, 'UPI', 'Completed', '2026-08-05'),

(6, 'Karan', 'Ajay', 'Pune', 'Baner', 'Bike', 6.5, 120, 'Cash', 'Cancelled', '2026-08-06'),

(7, 'Pooja', 'Vikas', 'Pune', 'Hadapsar', 'Auto', 11.2, 190, 'UPI', 'Completed', '2026-08-07'),

(8, 'Rohan', 'Manoj', 'Mumbai', 'Dadar', 'Bike', 13.5, 250, 'Card', 'Completed', '2026-08-08'),

(9, 'Anjali', 'Deepak', 'Pune', 'Aundh', 'Auto', 5.8, 110, 'Cash', 'Completed', '2026-08-09'),

(10, 'Vivek', 'Nitin', 'Pune', 'Viman Nagar', 'Bike', 14.5, 280, 'UPI', 'Completed', '2026-08-10'),

(11, 'Kavita', 'Sanjay', 'Mumbai', 'Powai', 'Auto', 9.5, 170, 'UPI', 'Completed', '2026-08-11'),

(12, 'Arjun', 'Mahesh', 'Pune', 'Kharadi', 'Bike', 10.2, 210, 'Card', 'Cancelled', '2026-08-12'),

(13, 'Meena', 'Sachin', 'Pune', 'Shivaji Nagar', 'Auto', 6.2, 125, 'Cash', 'Completed', '2026-08-13'),

(14, 'Sahil', 'Ganesh', 'Mumbai', 'Kurla', 'Bike', 12.8, 230, 'UPI', 'Completed', '2026-08-14'),

(15, 'Divya', 'Akash', 'Pune', 'Magarpatta', 'Auto', 8.7, 160, 'UPI', 'Completed', '2026-08-15');


select * from rapido_rides;

-- after insert 
create table ride_audit
(
audit_id int  auto_increment primary key,
ride_id int,
customer_name varchar(50),
action_type varchar(30),
action_time datetime
);

-- create  trigger after insert 

delimiter //
create trigger after_ride_insert
after insert 
on rapido_rides
for each row
begin
insert into ride_audit
(
ride_id,customer_name,action_type,action_time)
values (new.ride_id,new.customer_name,"New ride",now());
end //
delimiter ;

select * from ride_audit;

insert into rapido_rides VALUES
(16, 'chandu', 'shubham', 'Pune', 'Mumbai',
 'bike', 8.7, 190, 'UPI', 'Completed', '2026-08-15');
 
 
 -- create a deleted history trigger 
 create table delete_rides
(
delete_id int  auto_increment primary key,
ride_id int,
customer_name varchar(50),
fare decimal (10,2),
delete_at datetime
);

delimiter //
create trigger after_ride_delete
after delete
on rapido_rides
for each row
begin
insert into delete_rides
(
ride_id,customer_name,fare,delete_at)
values (old.ride_id,old.customer_name,old.fare,now());
end //
delimiter ;

select * from delete_rides;

delete from rapido_rides
where ride_id=15;
