-- case function
/*display the salary category, if the salary less than 10k then
low salary. salary between 10k to 20k then average salary, salary 
greater than 20k then high salary.*/
select salary from employees;

select salary,
case
when salary <10000 then "low salary"
when salary between 10000 and 20000 then "average salary"
when salary >20000 then "high salary"
end as salary_category
from employees;

select salary,
case
when salary <10000 then "low salary"
when salary between 10000 and 20000 then "average salary"
end as salary_category
from employees;

select salary,
case
when salary <10000 then "low salary"
when salary between 10000 and 20000 then "average salary"
else "high salary"
end as salary_category
from employees;
/* job_id starts with IT ="IT jobs"
Job_id starts with SA='Sales Jobs"
Job_id starts with 'FI'=finance Jobs
others="other jobs"*/

select job_id,
case
when job_id like 'SA%' then "Sales Jobs"
when job_id like 'IT%' then "IT Jobs"
when job_id like 'FI%' then "Finance Jobs"
else "other Jobs"
end as job_category
from employees;

/* salary >10000,cp-not null=salary+comm+0.02+1000
salary>10000,null=salary+0.03+1000
salary<=10000,not null=salary+comm+500
salary<=10000,null=salary+0.01+500*/

select 
first_name,
salary,
commission_pct,

case
when salary > 10000 and commission_pct is not null 
then salary + (salary * commission_pct) + (salary * 0.02) + 10000
when salary > 10000 and commission_pct is null
then salary + (salary * 0.03 ) + 10000
when salary <= 10000 and commission_pct is not null 
then salary + (salary * commission_pct) + 500
when salary <= 1000 and commission_pct is null 
then salary + (salary * 0.01) +500
end as salary_details
from employees;

-- select 1000+0.05+0.02+1000 ;
-- select 1000+50+20+1000;
-- select commission_pct from employees;

-- if(logical_test,value_if_true,value_if_false)
select salary,if(salary<15000,"low salary","high Salary")
as salary_cat from employees;
/*display the salary category, if the salary less than 10k then
low salary. salary between 10k to 20k then average salary, salary 
greater than 20k then high salary.*/

select salary,if(salary<10000,"low salary",if(salary between
10000 and 20000,"average salary","high salary")) as sal_cat
from employees;

select job_id,if(job_id like 'IT%',"IT jobs",if(job_id like
"SA%","Sales Jobs",if(job_id like "FI%","Finance Jobs",
"other jobs"))) as job_cat from employees;

-- order of execution
/*from/on/join-where-group by-having-select-distinct-order by-
limit/offset*/
-- string ,numeric,date,aggregate functions







