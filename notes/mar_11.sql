/*
dcl -- grand and revoke
 grand - is used to give privilages to mysql users
 revoke - is used to remove privilages from user
  grant:
	grand privilages on 
    database_name.table_name to username@host;
  revoke:
	revoek privilages on 
    dtabase.name.table_name from username@host;
    
privilagies
select, insert,uodate,delete, all privilegies
*/
/*
grand select, insert on hr.aashin 
to ceo@vip;

revoke selct, insert on kavin from 
ceo@vip;


*/

-- DQL - retrieval - selct
/* (*select (mandatory)
from, where, group by, having, order by, limit,offset
*/

-- select sued to display the things and data.
select "aashin" as name;
select 25 + 5 as addition;  -- these are called litrals

-- from used for table name 
-- display the employee_id with their name

select employee_id, first_name
from employees;

/* display the department_id and department_name*/
/* display the each employee name with theri job_id and salary*/
/*display the country_name*/

select  department_id, department_name from departments;
select first_name, last_name, job_id from employees;
select country_name from countries;

/* display the employee name , slary and salary with bonus of 1000 
considerd as increament salary of each employees*/

desc employees;
select first_name, salary, salary + 1000 as bonus from employees;
