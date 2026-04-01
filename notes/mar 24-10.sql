-- having
-- having is used to filter the group
-- having will run after group by clause
-- having works with group by, without group by it wont work
-- where filter the rows.
-- where runs after from clause.

-- display the department_id whose having more than 5 employees
select department_id,count(*) as cnt from employees
group by department_id having cnt>5;
/*display the department whose having total salary is greater
than 10K*/
select department_id,sum(salary) as total from employees
group by department_id having total>10000;
/* find departments where the average salary is 
greater than 8k*/
select department_id,avg(salary) as average from employees
group by department_id having average>8000;/* find departments where average salary  
should be greater than 6000 and 
number of employees should be greater than 3.*/
select department_id,avg(salary) as average,
count(*) as cnt from employees
group by department_id having average>6000 and
cnt>3;

-- order by 
-- sorting the result or data.
-- default sorting -ascending
select first_name,last_name,salary from employees
order by salary desc;
select first_name,last_name,salary from employees
order by 4 desc;
select * from employees
order by 3;
select first_name,last_name from employees
order by first_name ,last_name desc ;

-- sort the employees table by salary in descending order
select * from employees order by salary desc;

-- display who earns the highest salary 
select * from employees order by salary desc limit 1;

-- display the top 3 lowest paid employees
select * from employees
order by salary limit 3;
-- display top 3 departments having highest total salary.
select department_id,sum(salary) as total from employees
group by department_id order by total desc limit 3;



