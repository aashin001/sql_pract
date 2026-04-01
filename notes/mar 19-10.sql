-- Date and time functions
select now();-- current date and time
select curdate();-- current date
select current_time();-- current time
select current_timestamp();-- current date and time
select curtime();-- current time
select current_date();-- current date
-- extract date and time
select date(now());
-- "yyyy-mm-dd"
-- "yyyy-mm-dd HH:MM:SS"
select date("2026-01-01 04:55:33");
select day("2026-01-01");
select dayname(current_date());
select dayofmonth(current_date());
select dayofweek(now());
select dayofyear(now());
select month("2000-07-11");
select monthname(now());
select year("2015-01-01");
select week(now());
select hour(current_timestamp());-- minute,second

-- date_format(date,"specifiers")
select date_format("2026-01-01 07:44:33","%p");-- 1stJanuary26

-- date_add(date,interval)
select date_add(now(), interval 10 day);
select date_add(now(), interval 5 month);
select date_add(now(), interval 10 year);
select date_add(now(), interval 10 hour);
select date_add(now(), interval 8 minute);
select date_add(now(), interval 10 second);
select date_sub(now(),interval 10 day);
select date_sub(now(),interval 30 month);

-- datediff(date,date)
select datediff("2026-01-01","2017-01-01");-- days
select datediff("2026-01-01","2017-01-01")/30;-- month
select datediff("2026-01-01","2017-01-01")/365;-- days


















