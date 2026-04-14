# Date
# Time
# Datetime
# varchar
# char
# Text
# tinytext
# bigint
# int
# tinyint
# double
# float
# decimal

# 1 - HIGH, ON, POSITIVE, TRUE
# 

create table transactions1(
transaction_ID int,
transaction_status tinyint UNSIGNED,
description text,
transaction_date date,
Transaction_Time time,
Amount double
);

describe transactions1;


Insert into transactions1(transaction_id, transaction_status, description, transaction_date, transaction_time, Amount)
Values (1221, 1, 'Customer but a tin of milk', '2025-09-10', '03:40:00', 800000),
	   (1222, 0, 'Transaction via the web', '2025-10-20', '08:40:00', 20000),
       (1223, 1, 'Transaction via POS', '2025-09-05', '05:25:00', 150000),
       (1224, 1, 'Transaction via Mobile App', '2025-10-20', '03:40:00', 20000),
       (1225, 0, 'Transaction via the web', '2024-07-20', '01:30:00', 200000);

select * from transactions1; 

Describe transactions1;

drop table transactions; 

truncate transactions;

describe transactions1;

Alter table transactions1
Modify Column Amount int;

Update transactions 
Set Amount = 1000000
WHERE transaction_id = 1223;

Alter table transactions Drop Column Amount;

Alter Table transactions1 
Add Column Mode_Of_Transaction
varchar(200) NOT NULL 
After Description;

Alter Table transactions1
Drop Column Mode_of_transaction;

Alter Table transactions1 
Add Column Mode_Of_Transaction
varchar(200) Default "POS" NOT NULL 
After Description;

Update transactions1
Set Mode_of_Transaction = "Mobile Transfer"
WHERE Transaction_ID = 1225;

Alter table transactions1
Rename Sales;

Select * from Sales;

Show tables;

Describe transactions;

show status;


 Create Table Student_Tuition(Student_ID int, Student_Name varchar(100), Description text, Date_Of_Payment Date, Item varchar(50), Amount double);

show tables;


show grants for datascientist@localhost;



use employee; 

describe Sales;

Select * from Sales;

Alter Table sales
Drop Column Customer;


Update Sales 
Set Customer_ID = 22205
WHERE Transaction_ID = 1225;

create database facuties;

-- delete faculties;

Create table Post(Post_ID int, Title varchar(50), DOP date, Content text, Poster varchar(100), Category varchar(100));
Describe Post;


Create database ManyToOne;
use ManyToOne;


CREATE TABLE Department (
    Dept_ID INT PRIMARY KEY,
    Dept_Name VARCHAR(100) NOT NULL
);


CREATE TABLE Student (
    Std_ID INT PRIMARY KEY,
    Name VARCHAR(100),
    Dept_ID INT,
    
    FOREIGN KEY (Dept_ID)
    REFERENCES Department(Dept_ID)
);

