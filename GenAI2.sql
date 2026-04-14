-- Syntax:  Create database database_name;

Create database GenAI2;

show databases;
use genAi2; 

Create database GenAIStudents;
use GenAIStudents;

Create table StudentDetails(
	Std_ID int, 
    Name varchar(100),
    Email varchar(100),
    Address varchar(250),
    Department varchar(50),
    Tel varchar(16)
);

Describe studentdetails;

Insert into studentdetails(Std_ID, Name, Email, Address, Department, Tel)
Values(4536, "Vincent", "incent@aol.com", "Lekki, Lagos Nigeria", "Computer Science", "+234806543874");

Select * from studentdetails;

Show databases;

use sales;

show tables;

describe post;

Create table Product(
Prd_ID int,
Name varchar(100),  -- Varchar stores 255 characters 
Descripton text,    -- Text store lots of data
Qty int,
Cost_Price decimal(50, 2), -- Camel Casing Convention, Pascal Casing Convention, Sanke Casing Convention --
Sales_Price decimal(50, 2),
Manufacturer varchar(200)
);

Describe Product;


use sales;

show tables;

Select * from Orchestra;

Delete from Orchestra
Where id = 109;

