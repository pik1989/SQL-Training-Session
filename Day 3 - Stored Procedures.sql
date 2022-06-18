use youtube

create table players 
(
player_id int, 
player_name varchar(100),
country varchar(20),
goals int
)

INSERT INTO players values (901, 'Sunil', 'Ind', 5);
INSERT INTO players values (902, 'Daniel', 'Eng', 11);
INSERT INTO players values (903, 'Christiano', 'Por', 12);
INSERT INTO players values (904, 'Zlatan', 'Swe', 11);
INSERT INTO players values (905, 'Rodriguez', 'Col', 5);
INSERT INTO players values (906, 'Henry', 'Ind', 8);
INSERT INTO players values (907, 'Nani', 'Por', 9);
INSERT INTO players values (908, 'Neymar', 'Bra', 5);
INSERT INTO players values (909, 'Messi', 'Arg', 5);
INSERT INTO players values (910, 'Martial', 'Fra', 7);

select * from players

1. Return the players that scored greater than 6 goals

select * from players where goals > 6

delimiter &&
create procedure top_players()
begin
select player_name, country, goals from players where goals > 6;
end &&
delimiter;

call top_players()

STORED PROCEDURES --> IN 

top 5 players? top 10 players?

delimiter //
create procedure top_f_players(IN var int)
begin
select player_name, country, goals from players order by goals desc limit var;
end //
delimiter;

call top_f_players(5)


3. Find the top player for a specific country

select player_name, goals from players where country = 'Por' 
order by goals desc limit 1


delimiter //
create procedure top_f_players_country(IN var1 int, IN var2 varchar(10))
begin
select player_name, goals from players where country = var2 order by goals desc limit var1;
end //
delimiter;

call top_f_players_country(2,'Ind')

STORED PROCEDURES for UPDATE Queries

update players set goals = ? where player_name = ?;

delimiter //
create procedure update_goals(IN var1 int, IN var2 varchar(25))
begin
update players set goals = var1 where player_name = var2;
end //
delimiter;

call update_goals(21, 'Christiano')

call update_goals(10, 'Sunil')

select * from players

STORED PROCEDURES USING OUT

select sum(goals) from players

delimiter //
create procedure total_goals(OUT total int)
begin
select sum(goals) from players into total;
end //
delimiter;

call total_goals(@total)

select @total as Total_count


STORED PROCEDURES USING OUT & IN

Find the total sum of goals for a particular country

delimiter //
create procedure total_goals_country(IN var varchar(25), OUT total_goals_c int)
begin
select sum(goals) from players where country = var into total_goals_c;
end //
delimiter;

call total_goals_country('Por', @total_goals_c)

select @total_goals_c