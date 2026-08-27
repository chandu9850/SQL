-- Banking Analytics
-- Step 1 — Create Database

CREATE DATABASE banking_analytics_db;

USE banking_analytics_db;

-- Step 2 — Create Customers Table

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    city VARCHAR(50),
    customer_segment VARCHAR(30),
    signup_date DATE
);

-- Step 3 — Create Branches Table

CREATE TABLE branches (
    branch_id INT PRIMARY KEY,
    branch_name VARCHAR(100),
    city VARCHAR(50)
);

-- Step 4 — Create Accounts Table

CREATE TABLE accounts (
    account_id INT PRIMARY KEY,
    customer_id INT,
    branch_id INT,
    account_type VARCHAR(30),
    opening_date DATE,
    current_balance DECIMAL(15,2),
    account_status VARCHAR(20),

    FOREIGN KEY (customer_id)
        REFERENCES customers(customer_id),

    FOREIGN KEY (branch_id)
        REFERENCES branches(branch_id)
);


-- Step 5 — Create Transactions Table

CREATE TABLE transactions (
    transaction_id INT PRIMARY KEY,
    account_id INT,
    transaction_date DATETIME,
    transaction_type VARCHAR(30),
    amount DECIMAL(15,2),
    transaction_status VARCHAR(20),

    FOREIGN KEY (account_id)
        REFERENCES accounts(account_id)
);

-- Step 6 — Create Loans Table

CREATE TABLE loans (
    loan_id INT PRIMARY KEY,
    customer_id INT,
    loan_type VARCHAR(50),
    loan_amount DECIMAL(15,2),
    interest_rate DECIMAL(5,2),
    loan_status VARCHAR(20),

    FOREIGN KEY (customer_id)
        REFERENCES customers(customer_id)
);

-- Step 7 — Insert 10 Customers

INSERT INTO customers VALUES
(1,'Rahul Sharma','Mumbai','Premium','2022-01-10'),
(2,'Priya Verma','Delhi','Mass Affluent','2022-04-15'),
(3,'Amit Patel','Pune','Premium','2023-02-20'),
(4,'Sneha Joshi','Bangalore','Mass Market','2023-06-05'),
(5,'Rohan Gupta','Hyderabad','Premium','2024-01-18'),

(6,'Neha Singh','Mumbai','Mass Affluent','2024-03-12'),
(7,'Vikas Kumar','Delhi','Mass Market','2024-05-25'),
(8,'Anjali Mehta','Pune','Premium','2024-07-10'),
(9,'Karan Shah','Bangalore','Mass Affluent','2025-01-15'),
(10,'Pooja Nair','Hyderabad','Mass Market','2025-03-20');

-- Check:

SELECT *
FROM customers;

-- Step 8 — Insert 10 Branches

INSERT INTO branches VALUES
(101,'Mumbai Central','Mumbai'),
(102,'Connaught Place','Delhi'),
(103,'Pune Central','Pune'),
(104,'Bangalore Main','Bangalore'),

(105,'Andheri Branch','Mumbai'),
(106,'Dwarka Branch','Delhi'),
(107,'Hinjewadi Branch','Pune'),
(108,'Whitefield Branch','Bangalore'),
(109,'Hitech City Branch','Hyderabad'),
(110,'Banjara Hills Branch','Hyderabad');

-- Step 9 — Insert 10 Accounts

INSERT INTO accounts VALUES
(1001,1,101,'Savings','2022-01-10',250000,'Active'),
(1002,2,102,'Current','2022-04-15',520000,'Active'),
(1003,3,103,'Savings','2023-02-20',175000,'Active'),
(1004,4,104,'Savings','2023-06-05',85000,'Active'),
(1005,5,101,'Current','2024-01-18',750000,'Active'),

(1006,6,105,'Savings','2024-03-12',310000,'Active'),
(1007,7,106,'Current','2024-05-25',125000,'Active'),
(1008,8,107,'Savings','2024-07-10',680000,'Active'),
(1009,9,108,'Current','2025-01-15',450000,'Active'),
(1010,10,109,'Savings','2025-03-20',95000,'Dormant');

-- Check:

SELECT *
FROM accounts;

-- Step 10 — Insert 15 Transactions

INSERT INTO transactions VALUES
(5001,1001,'2025-01-05 10:15:00','Deposit',50000,'Success'),
(5002,1001,'2025-01-07 14:30:00','Withdrawal',15000,'Success'),
(5003,1002,'2025-01-08 11:20:00','Deposit',120000,'Success'),
(5004,1003,'2025-01-10 09:45:00','Withdrawal',25000,'Success'),
(5005,1004,'2025-01-12 16:10:00','Deposit',30000,'Success'),
(5006,1005,'2025-01-15 13:25:00','Withdrawal',85000,'Success'),
(5007,1003,'2025-01-18 18:40:00','Transfer',45000,'Success'),

(5008,1006,'2025-02-03 10:10:00','Deposit',75000,'Success'),
(5009,1007,'2025-02-08 12:15:00','Withdrawal',20000,'Success'),
(5010,1008,'2025-02-12 15:30:00','Deposit',200000,'Success'),
(5011,1009,'2025-02-18 17:45:00','Deposit',150000,'Success'),
(5012,1010,'2025-03-02 11:00:00','Withdrawal',10000,'Success'),
(5013,1005,'2025-03-10 14:20:00','Deposit',250000,'Success'),
(5014,1008,'2025-03-15 16:30:00','Withdrawal',50000,'Failed'),
(5015,1002,'2025-03-20 19:00:00','Deposit',180000,'Success');

-- Step 11 — Insert 10 Loans

INSERT INTO loans VALUES
(9001,1,'Home Loan',5000000,8.25,'Active'),
(9002,2,'Personal Loan',800000,11.50,'Active'),
(9003,3,'Car Loan',1200000,9.10,'Active'),
(9004,4,'Personal Loan',500000,12.00,'Closed'),
(9005,5,'Business Loan',3000000,10.25,'Active'),

(9006,6,'Home Loan',3500000,8.50,'Active'),
(9007,7,'Car Loan',900000,9.50,'Closed'),
(9008,8,'Business Loan',4500000,10.00,'Active'),
(9009,9,'Personal Loan',1000000,11.00,'Active'),
(9010,10,'Education Loan',700000,8.75,'Active');

-- Verify All Tables


SELECT COUNT(*) AS total_customers
FROM customers;

SELECT COUNT(*) AS total_branches
FROM branches;

SELECT COUNT(*) AS total_accounts
FROM accounts;

SELECT COUNT(*) AS total_transactions
FROM transactions;

SELECT COUNT(*) AS total_loans
FROM loans;



-- 1. Total Customers
SELECT COUNT(*) AS total_customers
FROM customers;

-- 2. Active Customers
SELECT COUNT(*) AS active_customers
FROM loans
WHERE loan_status = 'Active';

-- 3. Active Accounts
SELECT COUNT(*) AS active_accounts
FROM accounts
WHERE account_status = 'Active';

-- 4. Total Deposits
select count(*) as total_deposits
from transactions
where transaction_type ='deposit';

-- 5. Total Withdrawals
select count(*) as total_Withdrawals
from transactions
where transaction_type ='Withdrawal';

-- 6. Net Transaction Value
SELECT
   sum( CASE
        WHEN transaction_type = 'Deposit' THEN amount
        WHEN transaction_type = 'Withdrawal' THEN -amount
        ELSE 0
    END) AS net_transaction_value
FROM transactions;


-- 7. Average Transaction Value
SELECT ROUND(AVG(amount), 2) AS average_transaction_value
FROM transactions;

-- 8. Transaction Volume
SELECT COUNT(*) AS transaction_volume
FROM transactions;

select * from transactions;


