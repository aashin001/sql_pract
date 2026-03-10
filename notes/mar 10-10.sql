Truncate marks;
select * from marks;
insert into marks(tamil,english,maths)
values(45,67,89),(23,45,67),(98,87,65),(34,56,78);

update marks
set total=tamil+english+maths;


-- TCl-Commit,Rollback,savepoint

create table table_1(id int,name varchar(25));
insert into table_1 values(1,'aa'),(2,'bb');
select * from table_1;

truncate table_1;
start transaction; -- session start
-- used to off the autocommit
insert into table_1 value(1,'aa'),(2,'bb');
create table table_2(id int);-- session end,commit,autocommit on
insert into table_1 value(3,'cc'),(4,'dd');
select * from table_1;

truncate table_1;
start transaction;-- session start
insert into table_1 values(1,'aa'),(2,'bb');
select * from table_1;
insert into table_1 values(3,'cc');
-- shutdown-session end,autocommit on


select * from table_2;
start transaction; -- session start
insert into table_2 value(1),(2);
savepoint a1;
insert into table_2 values(3),(4),(5);
savepoint a2;
insert into table_2 values(100); -- wrong
savepoint a3;

rollback to a1;
commit;
-- shutdown-session end,autocommit on


