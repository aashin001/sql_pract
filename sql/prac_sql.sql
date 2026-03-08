desc course;
desc student;

-- alter to change the structure of the obj
-- alter  -  addn change,modify, drop
-- add  -  used to add a new coloumn
-- syntax   -  alter tabe table_name add new_coloumn_name datatype;
alter table student add email varchar(25);
alter table student add father_name varchar (25) after name;

-- add at the first position
alter table student add s_no int first;

-- alter   -  change -- used to change the coloumn_name, dtype and size
-- alter table tb_name chnage old_name new_name dtypes;

alter table student change name full_name char(25);
alter table student change email email char(50);

-- alter -- modify -- used to change the dtype , size and constraint

-- alter table tb_name modify col_name dtypes(size) constarint
alter table student modify id char(25);
alter table student modify id int;


-- alter - drop - used to drop the coloumn_name;
alter table student drop father_name;
alter table student drop s_no;

desc student;


/*

--

*/

-- drop - to drop the databse and the obj

-- drop database_obj_type obj_name

drop table course;

-- rename - used to change the obj name
-- raname table old_name to new_name

rename table student to std_detail;

desc std_detail

-- truncate -- used to delt entire row, retain teh structure-- 
truncate std_detail;