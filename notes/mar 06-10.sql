Describe course;
describe student_detail;

-- alter-to change the structure of the object
-- alter-add,change,modify,drop
-- add-used to add a new column
-- syntax-alter table tb_name add new_column_name dtype;
alter table student add email varchar(25);
alter table student add father_name varchar(25) after name;
alter table student add s_no int first;

-- alter-change-used to change the column_name,dtype and size.
-- alter table tb_name change old_name new_name dtype;
alter table student change name full_name char(50);
alter table student change address address char(25);
alter table student change email email varchar(20);

/*alter-modify-used to change the datatype,size and 
constraint*/
-- alter table tb_name modify col_name dtype(size) constraint;
alter table student modify id char(5);

-- alter-drop-used to drop the column
-- alter table tb_name drop column_name;
alter table student drop father_name;
alter table student drop s_no;

-- Drop - to drop the database and object
-- Drop database_object_type object_name;
drop table course;
create database dummy;
drop database dummy;

-- rename-used to change the object name
-- rename table old_name to new_name
rename table student to student_detail;

/*truncate -used to delete entire row,retain 
the structure*/
-- truncate tb_name
truncate student_detail;











