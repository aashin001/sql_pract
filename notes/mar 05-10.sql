-- Datatype-Classify the data
-- numeric-int,float,decimal
-- string-char(),varchar()-4000
-- alphabets,numbers,alphanumeric,special characters
-- date and time-Datetime,date,time,year,timestamp
-- database name should be unique
-- Under the database object name should be unique.
-- column name should be unique


create table student(Id int,name varchar(25),age int,
address varchar(25));
create table course(cid char(5),cname varchar(25),
duration int);

show tables;

describe course;
desc course;

