--- Join 
select * from sales
select * from menu
select * from members

-- inner join/join

select * from sales
join members on  sales.customer_id = members.customer_id

-- left join
	
select * from sales
left join members on sales.customer_id = members.customer_id

-- right join
	
select * from sales
Right join members on sales.customer_id = members.customer_id

-- full join / full outer join
	
select * from sales
full outer join members on sales.customer_id = members.customer_id

--- cross join

select * from sales
cross join members 


-- DATE FUNCTION
--CURRENT_DATE : Returns the current value

select current_date

--CURRENT_TIME : Returns the current time
	
select current_time

--CURRENT_TIMESTAMP: Returns the current date and time

select  current_timestamp

--NOW():Returns the current date and time ( similar to current_timestamp)

select now ()

--AGE() : Calculate the difference between two dates and current_timestamp

select age('2024-05-29','2000-01-01')

select * from sales

-- find the differeence between orderdate and now

select order_date,age(current_date,order_date)as diff from sales 

--EXTRACT(): Extracts parts of a date (year,day,month,hour etc
	
select extract(year from '2024-05-29'::date)

-- extract the days and year from sales table
	
select * ,extract(year from order_date)as year ,extract(month from order_date) as months,
extract (day from order_date) as days from sales

select extract (year from order_date) as year from sales
select extract (month from order_date) as months from sales
select extract(day from order_date) as days from sales

---TO_CHAR : Is to extract day and month name 

	select * ,extract(year from order_date)as years ,to_char(order_date,'month') as months,
to_char ( order_date,'day') as days from sales


select to_char(now(),'day') as day_name

--DATE_PART():Similar to EXTRACT ,it return the part of the date/time

select date_part('year','2024-05-29'::DATE)

select date_part('year',order_date) as years from sales

---TO_CHAR():Converts a date/time value to a string according to a specified format
	
select to_char('2024-05-29'::date ,'YYYY/MM/DD')

select to_char(order_date ,'YYYY/MM/DD') as dates from sales
select to_char(order_date,'month') as months from sales
select extract(year from order_date) as year from sales
select date_part('year',order_date) as year from sales
select to_char(order_date,'yyyy-mm-dd') from sales
 
---TO_DATE: Converts a string to a date according to a specified format
	
select to_date('2024-05-29','yyyy,mm,dd')

--TO_TIMESTAMP-Converts a string to a timestamp according to a specified format
	
select to_timestamp('2024-05-29 14:35:23','yyyy-mm-dd hh24:mi:ss')

--INTERVAL:Creates an interval (a duration of time)

select now() + interval '1 day '
select now() - interval '2days'
select order_date,order_date - interval '2 days' from sales
select current_date + interval '1 days'
select current_timestamp + interval '2days'

