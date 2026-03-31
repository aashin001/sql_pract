-- Numeric Functions
-- abs(numeric_data)
select abs(101),abs(-101); -- convert negative integer to positive
select sign(45),sign(0),sign(-67);-- 1,0,-1
select floor(4.8),ceil(4.8),ceiling(4.5);-- 4,5
-- floor round to the nearrest smallest integer
-- ceiling round to the nearest smallest integer
-- round(number,[decimal digits])
select round(4.5678),round(4.5678,2);-- 5,  4.57
-- truncate (number,decimal_digits)
select truncate(4.5678,0),round(4.5678,2);-- 4,  4.57;
-- mod(number,divisor)-- return the reminder
select mod(11,2);
-- display the odd employee_id
select 11%2;
select employee_id from employees where mod(employee_id,2)=1;
-- power(number,power_value)
select pow(2,5),power(3,3);
-- sqrt(number)
select sqrt(16);
select pi();
select greatest(56,45,78,33);
select least(45,67,23,89);

-- string functions
select "apple"+"ball";
select concat("apple"," ","ball","cat") as name;
select concat(first_name," ",last_name) as full_name
 from employees;
-- concat_ws(seperator,text1,text2...
select concat_ws(" ","apple","ball","cat");
select length('besant technologies');
select upper("python"),ucase("mysql");
select lower("PYTHON"),lcase('MYSQL');
/*find the name whose having 4 letter in their first_name
without using like operators*/
select first_name from employees
where length(first_name)=4;







