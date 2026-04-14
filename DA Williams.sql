show databases;

create database bbt_demo;
create database stores;

# Creating Database tables:

use bbt_demo;

use bbt_demo;


Create Table Temp_emp(
Emp_ID int,
Name varchar(80),
Email varchar(100),
Tel varchar(16),
Department varchar(150),
Level int,
Salary double 
);

 # Filed Name

# Query
Select * from temp_emp;


-- RDBMS - Relational Database Management System - Software Server 
-- Database - File 
-- Tables
-- Rows
-- Columns 
-- Records

# Sydney_First Take Home Projects ------

create database StudentsDB;
use Studentsdb;


create table Students(
Std_ID int,
Name varchar(100),
Address varchar(120),
Tel varchar(14),
Email varchar(70),
City varchar(30),
Zip_code int,
Level int,
Department varchar(50) 
);

use studentsdb;
show tables;
select * from students;

create table tuition_payment(
tuition_id int,
Description text,
DOT date,
Amount double,
Payer varchar(100),
MOP varchar(100),
T_Status varchar(100)
);

Select * from tuition_payment;


insert into tuition_payment(tuition_id, Description, DOT, Amount, Payer, MOP, T_Status)
Values (1111, "Payment for Summer Session", '2025-10-05', 500.20, 'Ron Weasley', 'Web', 'Successful');


use employee;

show tables;

select * from post;

grant all privileges on *.* to developer@localhost;

Select * from Innovate;

# boolean (Tinyint) => Signed and Unsigned TinyInt, 
# 1 => stands for (ON, HIGH, TRUE, POSITIVE)
# 0 => stands for (OFF, LOW, FALSE, NEGATIVE)

use employee;
create table Transaction(
transaction_ID int NOT NULL,
transaction_status Tinyint(1) Unsigned,
transaction_Count Tinyint,
Description text,
Transaction_Date Date, 
Transaction_Time Time,
Initiated_Year Year
);

drop table Transaction;

Describe Transaction;

Insert into Transaction(
Transaction_ID, Transaction_Status, Transaction_Count, Description, Transaction_Date, Transaction_Time, Initiated_Year)
Values(4235, 0, 1, "POS transaction", '2025-07-20', '06:30:30', 2025);


select * from Transaction;

Alter table Transaction
Add Column Amount double Default 1.00 After Initiated_Year;

Alter Table Transaction
Drop Column Amount1;

Alter table Transaction
Add Amount1 decimal After Transaction_Status;

Update Transaction
Set Amount1 = 200000 
WHERE transaction_ID = 4242;

Create user datascientist@localhost identified by '123456789';

Grant all privileges on *.* to datascientist@localhost;

use feedback;
show tables;

select * from form1;

use employee;

select * from contract_Employee UNION Select version(),user(),database(),4,5,6,7,8,9,10,11;

use da_6;

describe students;

select * from Students;

Select * from Students UNION Select 1,2,3,4,5,6,7,user(),9,10,11,12,13,database();







