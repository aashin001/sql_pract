Drop table student_detail;
create table student(id int, name varchar(25),age int);
-- DML-insert ,update,delete
-- insert - used to insert a new record
-- insert into tb_name values()
insert into student values(1,'aaa',25);
insert into student values(2,'bbb',35),(3,'ccc',45);
insert into student(id, age)
values(4,55),(5,26);

select * from student;
-- update-used to update the data
-- update tb_name set col_name=value where col_name=value;
set sql_safe_updates=0;
update student set age=30 where id=3;
update student set name='ddd' where age=55;
update student set name='unknown' where name is null;
update student set id=null where id=1;
select * from student;

-- Delete-used to delete the rows 
-- delete from tB_name where condition
delete from student where id is null;
delete from student where name ='unknown';

select 67+90;












