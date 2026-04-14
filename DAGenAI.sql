Insert Into Post(Post_ID, Title, DOP, Content, Poster, Category) 
Values (1114, "I won’t settle for VP slot, says Amaechi", '2025-12-01', 'Former Minister of Transportation, Rotimi Amaechi, has dismissed suggestions that he may run as a vice-presidential candidate with the former Vice President Atiku Abubakar, or be part of any joint presidential ticket in the 2027 elections.', 'Ismaeel Uthman', 'Politics');

Select * from Post;

use sales;
show tables;

select * from post;


# UNIQUE Implementation
create table username(
user_id int Primary KEY NOT NULL,
address varchar(200) NOT NULL,
email varchar(200) UNIQUE NOT NULL,
tel varchar(16) UNIQUE NOT NULL,
password varchar(200) UNIQUE NOT NULL
);


describe username;

select * from username;

Insert into username(user_id, address, email, tel, password) 
Values(4444, 'Simson close, Acra', 'ayo234@gmail.com', '+23480675648', 'ayowilliams@@');

use sales; # Selecting a database 
show tables; # Extract all the tables in your database

select * from regional_sales;

Select * from regional_sales
WHERE Category = 'Laptop';


describe customer_counts;

select * from customer_counts;

drop table customer_counts;  

Select * from customer_counts;


use university;
show tables;

create database da_6;
use da_6;

create table customer_counts1(
cust_id varchar(200) PRIMARY KEY, 
cust_name varchar(255), 
deposit_count int,
width_count int
);

Insert into customer_counts1(cust_id, cust_name, deposit_count, width_count)
Values ('Cust-203', 'Jude', 35, 20);

select * from customer_counts1;

truncate table customer_counts;

drop table customer_counts1;

# Create Table with Primary Keyand Unique Keys
create table students(
Std_ID varchar(200) Primary Key Not Null,
Name varchar(200) NOT NULL,
Address varchar(250) NOT NULL,
DOB date NOT NULL,
Email varchar(200) UNIQUE NOT NULL, 
Tel varchar(16) UNIQUE NOT NULL, 
Username varchar(100) UNIQUE NOT NULL,
City varchar(100) NOT NULL,
State varchar(150) NOT NULL,
Zipcode int NOT NULL,
Nationality varchar(100) NOT NULL,
Department varchar(100) NOT NULL,
Faculty varchar(100) NOT NULL,
Level int NOT NULL
);

Describe Students;

Insert into Students(Std_ID, Name, Address, DOB, Email, Tel, 
Username, City, State, Zipcode, Nationality, Department, Faculty, Level)  
Values('STD/BBT/DA/105', 'Stanley Ubochi', '15 Kumasi Street', '1986-04-15', 'john.doe@aol.com', 
'+23478965422', 'stanleyubochi', 'Abuja', 'Abuja', 10023, 'Nigeria', 'Data Science', 
'School of Sci & Tech', 400 );

Select * from Students;


Describe Students;

Grant all privileges on *.* to developer1@localhost;

create user developer1@localhost identified by "developer1";

Grant Update, Select, Delete, Create, Insert on *.* to developer1@localhost;

show grants for developer1@localhost;


show grants for datascientist@localhost;


use da_6;
show tables;

select * from students;

use da_6;

show tables;

describe students;
select * from students;



Truncate table students;

Alter Table students 
Drop Column Zipcode;

create table Sales(
Sales_ID int Primary Key NOT NULL,
Product varchar(200) Not null,
Qty int NOT NULL,
Amount float NOT NULL,
Sales int NOT NULL
);

select * from Sales;

Drop table Sales;

Alter Table Sales
Add Column Sales_Date Date After Qty;


show tables;

select * from customer_counts1;

Update customer_counts1
Set width_count = 15
WHERE Cust_ID  = 'Cust-202';

Describe customer_counts1;

use da_6;

show tables;
select * from Sales;

Select * from Sales
Where Mode_of_transaction = "POS";

Select * from Sales
Where Mode_of_transaction = "Web";

Select * from Sales
Where Mode_of_transaction = "Mobile Transfer";

Select * from Sales
Where Mode_of_transaction = "Mobile App";

describe Sales;

Insert into Sales(Customer_ID, Transaction_ID, Transaction_Status, Customer, 
Description, Mode_of_Transaction, Transaction_date, Transaction_Time, Amount)
Values(22213, 1212, 0, 'Nishant Koenig', 'Transaction Via the Mobile transfer', 'Mobile Transfer', '2026-02-09', '09:28:20', 500000);

Select Mode_Of_Transaction,
Count(Mode_Of_Transaction) AS Count_Transaction_Per_Channel 
From Sales
GROUP By Mode_Of_Transaction;

Select Customer_ID, Transaction_ID, Customer, Mode_of_Transaction, Transaction_Date
From Sales;

Select Customer 
From Sales;

Select Count(Customer) AS Total_No_Of_Customers
From Sales;

Select Sum(Amount) As Total_Amount_Of_Transaction_IN_USD
From Sales;

Select Avg(Amount) AS Average_Transactions
From Sales;




use da_6;
show tables;

select * from Customer_counts1;

Select * from Customer_Counts1
UNION Select database(), user(), SESSION_USER(),  CONNECTION_ID();


use da_6;

Select * from Customer_Counts
UNION Select database(), user(), LENGTH('da_6') = 4,  Version();

use employee;

show tables;

select * from sales;


# >, <, >=, <=, =, != (Not Equal to)

use employee;
show tables;


select * from products;
select * from orchestra;

Select * from Orchestra
WHERE show_date > '2000-12-31';

Select * from Orchestra
WHERE show_date < '2000-12-31';

# Comparisom Operator 




use employee;

select * from orchestra
WHERE orchestra_origin = "England";

select * from orchestra
WHERE orchestra_origin = "United States";

Select * from Orchestra 
WHERE Genre = 'Classical';

Select * from Orchestra 
WHERE Show_ID = 10;

describe Orchestra;

Select * from Orchestra 
WHERE Genre != 'Classical';

Select * from orchestra
WHERE Show_ID = 14;

Select * from Orchestra
WHERE member = 'Paul Shaffer';


select * from orchestra;

Select * from orchestra
WHERE orchestra_origin in ('United States', 'England', 'Kenya');

Select * from Orchestra
WHERE Genre in ('Classical', 'Rock');

Select * from Orchestra
WHERE member in ('Jools Holland', 'Paul Shaffer', 'Gustavo Dudamel');


Select * from Orchestra
WHERE Show_id in (5, 8, 9, 2);

Select * from Orchestra
WHERE show_id = 5
AND orchestra_origin = 'United States';

Select * from Orchestra;


# Resultset 

Select * from Orchestra 
WHERE Orchestra_Origin = 'Jamaica'
AND show_date >= '1950-12-31'
AND Location = 'New York City, Nigeria'
AND Member = 'Lorne Michaels Creators';

Select * from Orchestra
WHERE Orchestra_origin in ('England', 'United States', 'Kenya')
AND show_date >= '2000-12-31';


Select * from Orchestra 
WHERE Orchestra_Origin = 'United States'
OR show_date >= '2026-12-31'
OR Location = 'New York City, Nigeria'
OR Member = 'Lorne Michaels Creators';


# Orchestra that are between 1990 and 2000
Select * from Orchestra 
WHERE Show_Date >= '1990-12-31' 
AND Show_Date <= '2000-12-31';

# Orchestra that are between 1990 and 2000
Select * from Orchestra 
WHERE Show_Date >= '2000-12-31' 
AND Show_Date <= '2026-12-31';


# Orchestra that are between 2020 and 2026
Select * from Orchestra 
WHERE Show_Date >= '2020-12-31' 
AND Show_Date <= '2026-12-31';

# Between Operator
Select * from Orchestra
WHERE show_id between 3 and 5;

Select * from Orchestra
Where Show_date between '2024-01-01'
AND '2026-02-28'; 

Select * from Orchestra
Where Show_date between '2025-01-01'
AND '2026-02-28'; 

Select * from Orchestra;

Select * from Orchestra
WHERE orchestra_origin LIKE 'United%';

Select * from Orchestra
WHERE location LIKE 'New%';

Select * from Orchestra
WHERE orchestra_origin LIKE 'London%';

Select * from Orchestra
WHERE orchestra LIKE '%Orchestra';

Select * from Orchestra
WHERE Orchestra_Origin 
LIKE '%England';

Select * from Orchestra 
WHERE Location LIKE '%City%';


Select * from Orchestra 
WHERE Location LIKE '%Ne%';

Select * from Orchestra 
WHERE Orchestra_origin LIKE '%Lo%';

Select * from Orchestra 
WHERE Location LIKE '%Lo%';

Select * from Orchestra 
WHERE Location LIKE '%Lo%';

Select * from Orchestra 
WHERE name LIKE '%The%';

Select * from Orchestra 
WHERE name LIKE '%ol%';

select * from Orchestra
WHERE Genre LIKE '_lassical';

select * from Orchestra
WHERE Genre LIKE '_lue';

Alter Table Orchestra
Drop Column Country;

Alter Table Orchestra 
ADD Column Country varchar(100)
Default('Nigeria') ;

select * from Orchestra
WHERE Genre LIKE '_ock';

Update Orchestra
Set Genre = 'England'
WHERE show_id = 13;

select * from Orchestra;

Update Orchestra
Set Country = 'China'
WHERE Show_ID = 8;

Select * from Orchestra
WHERE Country = 'Canada';

Select * from Orchestra
WHERE COuntry LIKE '_SA'
LIMIT 1;

Select Count(show_id) AS TOTAL_NO_OF_Orchestras # Aliases
from Orchestra;

Create table Transactions(
Trs_ID int NOT NULL PRIMARY KEY,
Cust_Name varchar(100) NOT NULL,
Trs_Date date NOT NULL,
Amount decimal NOT NULL);

Select * from Transactions;

Insert Into Transactions(Trs_ID, Cust_Name, Trs_Date, Amount)
Values (112, 'Ron Weasley', '2026-01-30', 300000),
		(113, 'John Doe', '2026-01-25', 15500),
        (114, 'Seema Sharma', '2026-02-10', 5000000),
        (115, 'Prakit Patel', '2026-03-05', 1500000),
        (116, 'John Orido', '2026-02-12', 400000),
        (117, 'Selfa Soknan', '2026-03-09', 350000),
        (118, 'Uche Nwosu', '2026-02-28', 80000),
        (119, 'Osas Osadebe', '2026-02-02', 120000),
        (110, 'Leo Eeh', '2026-03-04', 4000000),
        (111, 'Tony Nwosu', '2026-03-10', 5000000);

Select Count(Trs_ID) As Total_No_OF_Transaction  # Count total number of transactions (KPI) - 
From Transactions;

Select sum(Amount) AS Total_Amount_Of_Transactions # Sum all the transactions
From Transactions;

Select max(Amount) As Highest_Transactions # Get the Highest Transaction
From Transactions;

Select min(Amount) As Lowest_Transactions # Get the Highest Transaction
From Transactions;

Select Avg(Amount) AS Average_Transaction # Get the average of the total Transactions
from Transactions;

# Get KPI's
Select Count(Trs_ID) As Total_No_OF_Transaction,  # Count total number of transactions (KPI) - 
sum(Amount) AS Total_Amount_Of_Transactions, # Sum all the transactions
max(Amount) As Highest_Transaction, # Get the Highest Transaction
min(Amount) As Lowest_Transaction, # Get the Highest Transaction
Avg(Amount) AS Transaction_Average # Get Transactions Average
from Transactions;

Select * from Transactions
Order By Amount
DESC
LIMIT 1;

Select * from Transactions
Order By Amount
DESC
LIMIT 4;

# get the 3 most recent transactions
Select * from Transactions
Order By Trs_Date
DESC
LIMIT 5;

# Get the 5 oldest transactions
Select * from Transactions
Order By Trs_Date ASC
LIMIT 5;

# get the 3 most recent transactions
Select * from Transactions
Order By Trs_Date
DESC
LIMIT 1;

select * from transactions;
show tables;

Select * from Sales;

select * from Orchestra;

Select Country,
Count(Country) AS Country_Total_Orchestra
From Orchestra
Group By Country;

Select Mode_Of_Transaction,
Count(Mode_Of_Transaction) AS Count_Of_Channel_Transactions
From Sales 
Group By Mode_Of_Transaction;

Select Mode_Of_Transaction,
Count(Mode_Of_Transaction) AS Count_Of_Channel_Transactions
From Sales 
Group By Mode_Of_Transaction
Order By Count_Of_Channel_Transactions DESC
LIMIT 1;


Select Mode_Of_Transaction,
Count(Mode_Of_Transaction) AS Count_Of_Channel_Transactions
From Sales 
Group By Mode_Of_Transaction
Order By Count_Of_Channel_Transactions ASC
LIMIT 1;

Select Mode_Of_Transaction, 
-- Sum(Amount) AS Highest_Amount,
Count(Mode_Of_Transaction) AS Total_Channel_Transaction
From Sales 
Group By Mode_Of_Transaction
Order By Total_Channel_Transaction ASC;

Select Count(Mode_of_Transaction)
From Sales;

Select Sum(Amount) AS Total_Amount_Of_Transactions
From Sales;

Select Max(Amount) AS Highest_Amount_Of_Transactions
From Sales;

Select Min(Amount) AS Highest_Amount_Of_Transactions
From Sales;

Select Avg(Amount) AS Average_Amount_Of_Transactions
From Sales;

Select Mode_of_Transaction,
Sum(Amount) As Total_Amount,
Max(Amount) As Highest_Amount_of_Transaction,
Min(Amount) As Lowest_Amount_Of_Transaction,
Count(Mode_of_Transaction) As Count_Of_Channel_Transaction,
Avg(Amount) AS Average_Channel_Amount
From Sales 
Group By Mode_Of_Transaction
Order By Total_Amount DESC;


Select Mode_of_Transaction,
Sum(Amount) As Total_Amount,
Max(Amount) As Highest_Amount_of_Transaction,
Min(Amount) As Lowest_Amount_Of_Transaction,
Count(Mode_of_Transaction) As Count_Of_Channel_Transaction,
Avg(Amount) AS Average_Channel_Amount
From Sales 
Group By Mode_Of_Transaction
Order By Total_Amount DESC
LIMIT 2;

Select * from Sales;

Select count(Mode_of_transaction)
From Sales;

Select Customer
From Sales;

-- Lets show all the tables
use employee;
Show tables;
/* Select * from Sales 
into outfile 
'sales.txt';
*/

use da_6;

create database GenAi_modelling;

show databases;
use GenAi_modelling;

Show tables;


create table Faculty(
Faculty_ID int Primary Key NOT NULL,
Name Varchar(200)  NOT NUll,
Dean varchar(200) NOT NULL,
Number_Of_Dept int NOT NULL,
YOE Date NOT NULL,
Location varchar(200) NOT NULL
);

create table Department(
Dept_ID int Primary Key NOT NULL,
Name varchar(200) NOT NULL,
Faculty varchar(200) NOT NULL,
Student_Count int NOT NULL,
HOD varchar(200) NOT NULL,
Course_Count int NOT NULL,
Lecturers_Count int NOT NULL,

Faculty_ID int,

FOREIGN KEY (Faculty_ID) REFERENCES Faculty(Faculty_ID)
); 


Show tables;

Insert into Faculty(Faculty_ID, Name, Dean, Number_Of_Dept, YOE, Location)
			Values (1233, 'Medical Science', 'John Doe', 10, '2000-05-05', 'Epe'),
				   (1234, 'Arts', 'Ron Weasley', 30, '1990-05-30', 'Ojo'),
				   (1235, 'Engineering', 'Tony Nwosu', 8, '1980-04-25', 'Lekki'),
                   (1236, 'Social Sciences', 'Mr Williams Engadi', 15, '1984-08-30', 'Ojo');



Insert into Department(Dept_ID, Name, Faculty, Student_Count, HOD, Course_Count, Lecturers_Count, Faculty_ID)
			Values(1110, 'Information System', 'Science and Technology',  3000, 'Yinka Williams', 30, 10, 8888);

Select * from Faculty;
sELECT * from Department;


use genai_modelling;


drop table faculty;
drop table department;


create database bc;
use bc;

create table Student(
std_id int Primary Key not null, 
name varchar(200), 
course varchar(200), 
level int not null
);

create table course(
course_id int Primary Key Not Null,
name varchar(200),
unit int not null,

std_id int,
foreign key (std_id) References Student(std_id)
);

SHOW CREATE TABLE course;

describe course;

drop table student;
drop table course;

CREATE TABLE Student (
    std_id INT PRIMARY KEY,
    name VARCHAR(200),
    level INT NOT NULL
);


CREATE TABLE Course (
    course_id INT PRIMARY KEY,
    name VARCHAR(200),
    unit INT NOT NULL
);

CREATE TABLE Enrollment (
    std_id INT,
    course_id INT,
    PRIMARY KEY (std_id, course_id),
    FOREIGN KEY (std_id) REFERENCES Student(std_id),
    FOREIGN KEY (course_id) REFERENCES Course(course_id)
);


create database studies;

use studies;



drop table Course;
describe Student;
drop table department;
drop table enrolment;
drop table faculty;

Insert into Course(C_Code, Credit, Name, Department, Level)
Values(124, 100, 'CIT104', 'Computer Science', 300),
	  (132, 100, 'ECN103', 'Econonics', 300);
      
Insert into Student(Std_ID, Name, Reg_No, DOB, Department, Level, YOA, Status, Address, Tel, Email, CGPA)
	Values(1012, 'Ron Weasley', 896535, '1988-04-30', "Economics", 200, '2024', 'Undergraduate', 'No 10 2 CA Drive', '+18090765436', 'ron.weasley@aol.com', 3.67);

-- OUR MODELLING --

Create table Faculty(
Faculty_ID int PRIMARY KEY NOT NULL,
Name varchar(200) NOT NULL,
Dean varchar(150) NOT NULL,
Location varchar(100) NOT NULL
);


Create table Department(
Dept_ID int Primary Key NOT NULL,
Name varchar(200) NOT NULL,
HOD varchar(200) NOT NULL,

Faculty_ID int NOT NULL,
FOREIGN KEY(Faculty_ID) REFERENCES Faculty(Faculty_ID)
);


create table Student(
Std_ID int Primary Key NOT NULL,
Name varchar(200) NOT NULL,
Reg_No int NOT NULL,
DOB date NOT NULL,
Level int NOT NULL,
YOA Date NOT NULL,
Status enum('Active', 'Suspended', 'Graduated'),
Address text NOT NULL,
Tel varchar(16) NOT NULL,
Email varchar(150) NOT NULL,
CGPA decimal(4,2) NOT NULL,

Dept_ID int NOT NULL,
FOREIGN KEY (Dept_ID) REFERENCES Department(Dept_ID)
);

create table Course(
C_Code int Primary key Not NULL, 
Credit int NOT NULL, 
Name varchar(200) NOT NULL,
-- Semester varchar(200) NOT NULL,
Semester varchar(200) Check(Semester in ('First', 'Second'))
);

create table Enrolment(
C_Code int, 
Std_ID int,


FOREIGN KEY(C_Code) REFERENCES Course(C_Code),
FOREIGN KEY(Std_ID) REFERENCES Student(Std_ID)
);


drop table student;
drop table department;
drop table course;
drop table Faculty;

Show tables;
 
Alter table Student 
Modify Column CGPA float;



Create database demo;
use demo;

Create table Department(
Dept_ID int PRIMARY KEY NOT NULL,
Name varchar(200),
HOD varchar(200) NOT NULL,
Student_Count int NOT NULL,
Lecturers_Count int NOT NULL,

Std_ID int NOT NULL,
Faculty_ID int NOT NULL,
FOREIGN KEY (Std_ID) REFERENCES Student(Std_ID),
FOREIGN KEY (Faculty_ID) REFERENCES Faculty(Faculty_ID)
);

Create table Student(
Std_ID int PRIMARY KEY NOT NULL,
Name varchar(200) NOT NULL,
Address Text NOT NULL,
Email varchar(100) UNIQUE NOT NULL,
Tel varchar(16) NOT NULL,
Zip_Code int NOT NULL,
City varchar(100) NOT NULL,
Nationality varchar(100) NOT NULL
);


use studies;

show tables;

use genai_modelling;

select * from ccourse;
select * from department;
select * from faculty;
select * from student;


Drop table student;
Drop table course;
Drop table enrolment;

show tables;



----- Enrolment Modelling ------

Create table Student(
Std_ID int PRIMARY KEY NOT NULL,
Name varchar(200) NOT NULL,
Address Text NOT NULL,
Email varchar(100) UNIQUE NOT NULL,
Tel varchar(16) NOT NULL,
Zip_Code int NOT NULL,
City varchar(100) NOT NULL,
Nationality varchar(100) NOT NULL
);

create table Course(
C_Code int Primary key Not NULL, 
Credit int NOT NULL, 
Name varchar(200) NOT NULL,
Semester varchar(200) Check(Semester in ('First', 'Second'))
);



create table Enrolment(
C_Code int, 
Std_ID int,


FOREIGN KEY(C_Code) REFERENCES Course(C_Code),
FOREIGN KEY(Std_ID) REFERENCES Student(Std_ID)
);

Describe student;

Insert into Student(Std_ID, Name, Address, Email, Tel, Zip_Code, City, Nationality)
Values(1125, 'Seema Sharma', 'Sector 36', 'seemasharma@gmail.com', '+9149944764',  87534, "Gurugram", 'India');

Select * from Student;

Describe course;

Insert Into Course(C_Code, Credit, Name, Semester)
Values(8925, 80, 'Java Proggramming', 'First');

Select * from Student;
Select * from Course;

Describe enrolment;

Insert Into Enrolment(C_Code, Std_ID)
Values(83884, 98875);

Select * from Enrolment;


use sales;
show tables;

Select customer.first_name, customer.last_name, customer.email,
payment.payment_date, payment.amount_paid 
from Customer 
LEFT JOIN Payment
ON customer.cust_id = Payment.cust_id;


Select customer.first_name, customer.last_name, customer.email,
payment.payment_date, payment.amount_paid 
from Customer 
RIGHT JOIN Payment
ON customer.cust_id = Payment.cust_id;


Select customer.first_name, customer.last_name, customer.email,
payment.payment_date, payment.amount_paid 
from Customer 
INNER JOIN Payment
ON customer.cust_id = Payment.cust_id;

