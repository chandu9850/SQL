CREATE DATABASE bank_db;
USE bank_db
;
CREATE TABLE bank_accounts (
    account_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    city VARCHAR(50),
    account_type VARCHAR(20),
    balance DECIMAL(10,2)
);
INSERT INTO bank_accounts VALUES
(1001, 'Rahul Sharma', 'Pune', 'Savings', 50000),
(1002, 'Priya Singh', 'Mumbai', 'Savings', 75000),
(1003, 'Amit Kumar', 'Delhi', 'Current', 120000),
(1004, 'Neha Patel', 'Pune', 'Savings', 45000),
(1005, 'Rohan Mehta', 'Bangalore', 'Current', 90000),
(1006, 'Sneha Joshi', 'Mumbai', 'Savings', 65000),
(1007, 'Vikas Shah', 'Delhi', 'Savings', 55000),
(1008, 'Pooja Nair', 'Chennai', 'Current', 110000),
(1009, 'Karan Verma', 'Pune', 'Savings', 80000),
(1010, 'Meera Gupta', 'Hyderabad', 'Savings', 60000);

set autocommit=0;
select * from bank_accounts
where account_id=1001;

update bank_accounts set balance=65000
where account_id=1002;

commit;

rollback;

commit;
