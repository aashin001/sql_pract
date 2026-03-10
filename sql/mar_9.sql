-- DML - insert, update, delete
-- insert - used to insert a new record 

drop table std_detail;

create table student( id int , name varchar(25), age int);

insert into student value(01, "aashin", 24),
(02, 'kavin', 22) , (03, 'naveen', 26);  -- in oracle we cant insert two or more value by using (,) like this. 
insert into student(id, age) values (04, 26), (05, 28);

select * from student;
desc student;

-- update used to update the date
-- update tb_name set col_name = value where col_name= value;
-- set sql_safe_updates = 0;

update student 
set name = "rio"
where id = 4;

update student
set name = "bro"
where name is null;

update student
set name = "akash"
where age = 28;

update student
set age = null
where name = "naveen";

update student 
set id = 6, name = "vijay" -- we can update 2 value at same time. 
where age = 28;

-- delete  - used to delt the rows wont delete specificaly
-- delete from tb_name where condition

delete from student where age is null;

select * from student;
















