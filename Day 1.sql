create database youtube

use youtube 

show tables

create table employee(
empid int,
empname varchar(50),
empadd varchar(200),
depid int,
PRIMARY KEY (empid),
FOREIGN KEY (depid) references dep(depid)
)

create table dep(
depid int,
depname varchar(20),
depaddress varchar(100),
PRIMARY KEY (depid)
)

select * from employee;
select * from dep;

insert into dep values (1, 'Physics', 'India');
insert into employee values (1, 'Sat', 'HK', 1);
insert into employee values (2, 'Ramesh', 'India', 1);


insert into employee values (3, 'Rajesh', 'India', 2);





create table employee_new(
firstname varchar(100),
lastname varchar(100),
title varchar(3), 
age int,
salary int
);

select * from employee_new;

insert into employee_new values ('Satyajit', 'Pattnaik', 'Mr', 32, 10000);
insert into employee_new values ('Ramesh', 'Verma', 'Mr', 31, 20000);
insert into employee_new values ('Shalini', 'Gupta', 'Ms', 25, 10000);

ALTER TABLE employee_new
ADD emp_id int;

ALTER TABLE employee_new
DROP COLUMN salary;

DROP table employee_new;


str1 = "hello"
str2 = "world"

SELECT firstname, lastname, title FROM employee_new;
SELECT * FROM employee_new;

Find the employees whose salary is greater than 15000

SELECT CONCAT(firstname, ' ', lastname) as full_name FROM employee_new WHERE age >= 30;



CREATE TABLE empinfo(
first_name varchar(100),
last_name varchar(100),
id int, 
age int,
city varchar(100),
state varchar(100),
PRIMARY KEY (id)
)


INSERT INTO empinfo values ('John', 'Jones', 99980, 45, 'Payson', 'Arizona');
INSERT INTO empinfo values ('Mary', 'Jones', 88232, 25, 'Payson', 'California');
INSERT INTO empinfo values ('Eric', 'Edwards', 99981, 32, 'San Diego', 'Arizona');
INSERT INTO empinfo values ('Mary Ann', 'Edwards', 99982, 32, 'Phoenix', 'Arizona');
INSERT INTO empinfo values ('Ginger', 'Howell', 99983, 42, 'Cottonwood', 'Arizona');
INSERT INTO empinfo values ('Sebastian', 'Smith', 99984, 23, 'Gila Bend', 'Arizona');
INSERT INTO empinfo values ('Gus', 'Gray', 99985, 35, 'Bagdad', 'Arizona');
INSERT INTO empinfo values ('Mary Ann', 'May', 99920, 52, 'Tucson', 'Arizona');



select * from empinfo

1. List of all the employees staying in Arizona
select * from empinfo where state = 'Arizona'

2. Find the total count of employees staying in Arizona
select COUNT(id) from empinfo where state = 'Arizona'

3. Find the list of employees whose name starts with 'M'
select * from empinfo where first_name like 'M%'

4. Find all the employees that are staying in Arizona and age > 30
select * from empinfo where state = 'Arizona' and age > 30

5. Find the list of employees whose name contains 'ar'
select * from empinfo where first_name like '%ar%'

6. Find the list of employees whose name starts with either M or J
select * from empinfo where first_name like 'M%' or first_name like 'J%'

select * from empinfo WHERE first_name = 'Sebastian'

UPDATE empinfo
SET age = 30
WHERE first_name = 'Sebastian'

delete from empinfo where first_name like 'Mary%'