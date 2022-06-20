create database practice

use practice

CREATE table worker(
worker_id varchar(10),
first_name varchar(100), 
last_name varchar(100),
salary int,
joining_date datetime,
department varchar(10))

INSERT INTO worker values ("001", "Monika", "Arora", 100000, '2014-02-20 09:00:00', "HR");
INSERT INTO worker values ("002", "Niharika", "Verma", 80000, '2014-06-11 09:00:00', "Admin");
INSERT INTO worker values ("003", "Vishal", "Singhal", 300000, '2014-02-20 09:00:00', "HR");
INSERT INTO worker values ("004", "Amitabh", "Singh", 500000, '2014-02-20 09:00:00', "Admin");
INSERT INTO worker values ("005", "Vivek", "Bhati", 500000, '2014-06-11 09:00:00', "Admin");
INSERT INTO worker values ("006", "Vipul", "Diwan", 200000, '2014-06-11 09:00:00', "Account");
INSERT INTO worker values ("007", "Satish", "Kumar", 75000, '2014-01-20 09:00:00', "Account");
INSERT INTO worker values ("008", "Geetika Chauhan", "Arora", 90000, '2014-04-11 09:00:00', "Admin");

CREATE table bonus(
worker_ref_id int,
bonus_date datetime,
bonus_amt int)

CREATE table title(
worker_ref_id int,
worker_title varchar(100), 
affected_from datetime)

INSERT INTO bonus values (1,'2016-02-20 00:00:00',5000);
INSERT INTO bonus values (2,'2016-06-11 00:00:00',3000);
INSERT INTO bonus values (3,'2016-02-20 00:00:00',4000);
INSERT INTO bonus values (1,'2016-02-20 00:00:00',4500);
INSERT INTO bonus values (2,'2016-06-11 00:00:00',3500);

INSERT INTO title values (1,'Manager','2016-02-20 00:00:00');
INSERT INTO title values (2,'Executive','2016-06-11 00:00:00');
INSERT INTO title values (8,'Executive','2016-06-11 00:00:00');
INSERT INTO title values (5,'Manager','2016-06-11 00:00:00');
INSERT INTO title values (4,'Asst. Manager','2016-06-11 00:00:00');
INSERT INTO title values (7,'Executive','2016-06-11 00:00:00');
INSERT INTO title values (6,'Lead','2016-06-11 00:00:00');
INSERT INTO title values (3,'Lead','2016-06-11 00:00:00');


select * from worker

select first_name, left(first_name, 6) from worker;

select first_name, substring(first_name, 2, 3) from worker;

Mask a column such that the last few characters are *

select concat(left(first_name,4),'*****') from worker;

select concat(left(first_name,4), '*****') from worker;

create table tablename_new as
select * from tablename where age > (select age from tablename where name = 'Ravi')


create table wifi(
wifi_id int,
wifi_speed varchar(100),
wifi_latency int,
install_date datetime)


INSERT INTO wifi values (1, '500', 10, '2021-01-23');
INSERT INTO wifi values (2, '600', 10, '2021-01-23');
INSERT INTO wifi values (3, '200', 10, '2021-01-23');
INSERT INTO wifi values (4, '100', 10, '2021-01-23');
INSERT INTO wifi values (5, '100', 10, '2021-01-23');

INSERT INTO wifi values (1, '200', 10, '2022-06-19');
INSERT INTO wifi values (2, '300', 10, '2022-06-19');
INSERT INTO wifi values (3, '200', 10, '2022-06-19');
INSERT INTO wifi values (4, '100', 10, '2022-06-19');
INSERT INTO wifi values (5, '100', 10, '2022-06-19');

INSERT INTO wifi values (1, '500', 10, '2021-01-21');
INSERT INTO wifi values (2, '600', 10, '2021-01-21');
INSERT INTO wifi values (3, '200', 10, '2021-01-21');
INSERT INTO wifi values (4, '100', 10, '2021-01-21');
INSERT INTO wifi values (5, '100', 10, '2021-01-21');


#1 Find the average wifi speed per wifi

select avg(wifi_speed) , wifi_id
from wifi
group by wifi_id;

#1 Find the average wifi speed per wifi in the last 2 days

select avg(wifi_speed) , wifi_id
from wifi where install_date >= CURDATE() - INTERVAL 2 DAY
group by wifi_id;

select avg(wifi_speed) , wifi_id
from wifi where install_date >= DATE_ADD(CURDATE(), INTERVAL -2 DAY)
group by wifi_id;

# CASE STUDY

select upper(first_name) from worker

select distinct department from worker

select first_name, left(first_name, 3) from worker;

select * from worker where first_name = 'Amitabh'

INSTR --> Returns the position of the first occurence of a string in another string

select INSTR(first_name, 'a') from worker where first_name = 'Amitabh'

select distinct length(department), department from worker

whose first_name ends with h, and has 6 characters

select * from worker where first_name like '_____h'

select * from worker where first_name like '%h' and length(first_name) = 6;

# Sql query to fetch no of workers for each dep in desc order

select department, count(worker_id)  from worker
group by department order by count(worker_id) desc

# Sql query to print details of the workers who are managers

select distinct w.first_name, t.worker_title 
from worker w 
inner join title t 
on w.worker_id = t.worker_ref_id 
and t.worker_title = 'Manager'

# Sql query to print all odd rows

select * from worker

select * from worker where mod(worker_id, 2) <> 0;

select curdate()

select * from worker order by salary desc limit 5;

select * from worker order by salary desc limit 1,1;

select * from worker order by salary desc limit n-1,1;

# Find the 5th highest salary without using LIMIT

select salary from worker w1
where 4 = ( select count(distinct(w2.salary)) from worker w2 
where w1.salary >= w2.salary);

# Find employees with same salary

select w1.worker_id, w1.first_name, w1.salary from worker w1, worker w2 
where w1.salary = w2.salary and w1.worker_id != w2.worker_id

select max(salary) from worker 
where salary not in (select max(salary) from worker)

# Sql query to fetch departments that have less than 5 people in it

select department, count(worker_id) from worker
group by department having count(worker_id) <5;

# Sql query to print name of employees having the highest salary in each department

SELECT t.DEPARTMENT,t.FIRST_NAME,t.Salary
from(SELECT max(Salary) as
TotalSalary,DEPARTMENT from Worker group by
DEPARTMENT) as TempNew
Inner Join Worker t on
TempNew.DEPARTMENT=t.DEPARTMENT
and TempNew.TotalSalary=t.Salary;