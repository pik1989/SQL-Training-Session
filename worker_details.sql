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