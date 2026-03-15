select first_name
from employees
where commission_pct is not null;

select first_name, (salary + 1000) as bonus_salary
from employees
where commission_pct is null;


/* -- (while cards)
% -- lenth is unknown
_-- lenth is known
*/



/* display the name whose name starts with end with s*/
select first_name
from employees
where first_name like '%s';
/* display the name whose f_name had five letrs and whose l_name had four letters*/
select first_name
from employees
where first_name like '_____' and last_name like '____';

/* display the name whose f_name starts with 'd' and last name end with 't'*/
select first_name, last_name
from employees
where first_name like 'd%' and last_name like '%t';

select first_name, last_name
from employees
where last_name like '___n';

select email
from employees
where email like 'd%t';
select * from employees;