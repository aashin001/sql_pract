-- aggregate functions
-- aggregate function return one row output for a group
-- sum,count,min,max,avg
select sum(salary),sum(first_name),avg(salary),
avg(last_name) from employees;
select min(salary),max(salary) from employees;
select min(first_name),max(first_name) from employees;

select count(*),count(78),count(commission_pct)
from employees;
-- count(*)-return how many rows in a table
-- count(any number)-return how many rows in a table
-- count(column_name)-return not null value count

-- group by-used to group the rows
-- group by wont work without aggregate functions.


-- display the total salary of each department_id
select distinct department_id from employees;
select department_id,sum(salary) from employees
group by department_id;

-- display the average salary of each job_id
select job_id,avg(salary) as average_salary
 from employees group by job_id;
-- display the min and max salary of each department_id
select department_id,min(salary),max(salary) from employees
group by department_id;
-- display the employees count in each department_id
select department_id,count(*) as cnt from employees
group by department_id;
select first_name,
department_id,avg(salary) from employees
group by department_id,first_name;
select * from employees;
select first_name, department_id,min(salary) from employees
group by department_id;

-- display the each employees years of expereince

-- display how many wednesday and thursday in employees table

-- display how many people are hired in each month
-- display monthname wise average salary
-- display count of each dayname
