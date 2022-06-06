use youtube 

show tables 

select * from empinfo

INSERT INTO empinfo values ('Satyajit', 'Pattnaik', 99999, 32, 'Payson', 'Arizona');

create table project
(
project_id int,
project_name varchar(200),
student_id int
)
select distinct id from empinfo;
80, 81, 83 ,84, 85, 99
select distinct student_id from project
80. 81. 83, 84, 85, 11, 12, 13, 14

insert into project values (1, 'Data Analytics', 99980);
insert into project values (1, 'Data Analytics', 99981);
insert into project values (1, 'Data Analytics', 99983);
insert into project values (2, 'Data Analytics', 99984);
insert into project values (2, 'Data Analytics', 99985);
insert into project values (3, 'Data Analytics', 99980);
insert into project values (4, 'Data Analytics', 11111);
insert into project values (4, 'Data Analytics', 11112);
insert into project values (4, 'Data Analytics', 11113);
insert into project values (4, 'Data Analytics', 11114);

select a.first_name, a.last_name, a.age, b.project_name, b.student_id
from empinfo a right join project b
on a.id = b.student_id

select a.first_name, a.last_name, a.age, b.project_name, a.id
from empinfo a left join project b
on a.id = b.student_id

select a.first_name, a.last_name, a.age, b.project_name, a.id
from empinfo a inner join project b
on a.id = b.student_id


select empinfo.first_name, empinfo.last_name, 
empinfo.age, project.project_name, empinfo.id
from empinfo inner join project
on empinfo.id = project.student_id;


select a.first_name, a.last_name, a.age, b.project_name, b.student_id
from empinfo a right join project b
on a.id = b.student_id
UNION
select a.first_name, a.last_name, a.age, b.project_name, a.id
from empinfo a left join project b
on a.id = b.student_id



create database youtube_import_export

use youtube_import_export

show tables

select count(*) from churn_modelling

insert into churn_modelling values (10001, 999999, 'Pattnaik', 600, 'France', 'Male', 32, 2, 0, 1, 1, 1, 111111, 1)

delete from churn_modelling



select * from churn_modelling

Sum of total salary per geography
France: <>
Germany: <>
Spain: <>

Sum of total salary per Gender
Male: Total 
Female: Total

select geography, min(estimatedSalary) from churn_modelling
group by geography


select geography, gender, min(estimatedSalary) from churn_modelling
group by geography, gender

Sort the records --> ORDER BY 

select geography, gender, min(estimatedSalary) as minsal from churn_modelling
group by geography, gender
ORDER BY minsal desc

select geography, gender, min(estimatedSalary) as minsal from churn_modelling
group by geography, gender
ORDER BY geography asc

select geography, gender, min(estimatedSalary) as minsal from churn_modelling 
group by geography, gender
having minsal > 100

select * from churn_modelling limit 10 

find me the customer who has the highest salary

select customerId, estimatedSalary from churn_modelling 
order by estimatedSalary desc
limit 1,1

15662021


# STRING FUNCTIONS

select * from churn_modelling

select concat(geography, ' ' , gender) as new_name from churn_modelling

select geography, upper(geography) from churn_modelling


CREATE table transaction_details(
prod_name varchar(50),
prod_id int NOT NULL,  
order_date datetime,
amount int)

select * from transaction_details

INSERT INTO transaction_details VALUES ('Motorola', 1, '2020-01-01', 10000);
INSERT INTO transaction_details VALUES ('Canon Camera', 2, '2020-02-01', 60000);
INSERT INTO transaction_details VALUES ('Mousepad', 3, '2020-03-01', 2000);
INSERT INTO transaction_details VALUES ('Razer', 4, '2020-04-01', 3000);
INSERT INTO transaction_details VALUES ('ABC', 5, '2020-05-01', 1200);
INSERT INTO transaction_details VALUES ('DEF', 6, '2020-06-01', 2500);
INSERT INTO transaction_details VALUES ('XYZ', 7, '2020-07-01', 90000);
INSERT INTO transaction_details VALUES ('ABBBB', 8, '2020-08-01', 123100);
INSERT INTO transaction_details VALUES ('ASADASD', 9, '2020-09-01', 1500);
INSERT INTO transaction_details VALUES ('Pencil', 10, '2020-10-01', 10);

select * from transaction_details;

select datediff('2021-01-01', order_date) as datediff_today, prod_name, 
prod_id, order_date 
from transaction_details

select date_format(order_date, "%Y"), quarter(order_date), order_date from transaction_details;


SELECT DAY("2017-06-15");



SELECT ADDDATE("2017-06-15", INTERVAL -2 DAY);


select * from cust_details where cust_name like 'a%'

select * from cust_details where cust_name REGEXP '^a'

select * from cust_details where cust_name REGEXP "[ty]";

select * from cust_details where cust_name REGEXP "[t-z]";

select * from cust_details where cust_name like '%t%' or cust_name like '%y%';
