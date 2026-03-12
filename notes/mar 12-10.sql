-- where-conditional clause
-- where-used to filter the rows based on condition
-- where works with operators
/*<,>,<=,>=,=,!=,<>,and,or,in,not in,between,not between
is null,is not null ,like, not like*/
/*display the employee_id, name,salary who earn more 
than 10K*/
select employee_id,first_name,salary
from employees
where salary>10000;
/*display the employees details who works in the Job_id
'SH_clerk'*/
select * from employees where job_id='SH_clerk';
/*display the employees name, salary whose salary is 
equal to 10k or lesser than 10k*/
select first_name,salary from employees where salary <=10000;
/* -- display the employee detail whose 
first_name is 'Bruce'*/
select * from employees where first_name='bruce';
/* display the employee_detail who are not working as
'IT_prog'*/
select * from employees where job_id!='It_prog';
/* display the employee_name with salary whose salary should be greter
than 10K and also belongs to sales rep*/
select first_name,salary from employees
where salary>10000 and job_id='sa_rep';
/* display the employee_id with name with the condition of either 
their salary greater than 15k or they should have commission_pct or
 they belong to sH_clerk*/
select employee_id,first_name from employees
where salary>15000 or commission_pct is not null or job_id='Sh_clerk';
/* display the name whose salary ranges between 10k to 20k*/
select first_name from employees
where salary between 10000 and 20000;
/* display the name with salary whose salary is not in range of 0 to 10k*/
select first_name ,salary from employees
where salary not between 0 and 10000;
/* display the employees whose working as sH_clerk or sa_rep or it_prog*/
select first_name,job_id from employees
where job_id in ('sh_clerk','sa_rep','It_prog');
select first_name,job_id from employees
where job_id ='sh_clerk' or job_id='sa_rep' or job_id='it_prog';
/* display the employees whose 
salary will not be 10000,20000,15000*/
select first_name,salary from employees
where salary not in (10000,20000,15000);



