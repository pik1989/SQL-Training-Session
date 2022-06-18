use customer

show tables

select * from employee

1. List the employees having salary greater than the average salary

select avg(salary) from employee --2282.98

select count(*) from employee where salary > (select avg(salary) from employee)

2. List the employees that are having salary greater than '7795-CFOCW'

select salary from employee where employeeID = '7795-CFOCW'

select count(*) from employee 
where salary > (select salary from employee where employeeID = '7795-CFOCW')


3. Find the second highest salaried person --> '7569-NMZYQ'

select employeeID, salary from employee
order by salary desc limit 2

select max(salary) from employee --8684.8

select employeeID from employee 
where salary < (select max(salary) from employee)
order by salary desc limit 1


create database breast_cancer_db

use breast_cancer_db

show tables

select * from breast_cancer_data

select * from breast_cancer_data where diagnosis='0'

select * from breast_cancer_data where diagnosis= 1 and mean_texture >20
