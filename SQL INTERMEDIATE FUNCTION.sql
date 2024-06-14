-- INTERMEDIATE FUNCTION

--  AGGREGATE FUNCTIONS - functions that returns a single value (sum,count,stdev,mode)

select * from menu

-- SUM

select sum(price)  as total_price from menu 

-- COUNT

select count(product_name) as total_product from menu

 ---DISTSINCT COUNT - count uniquely
	
 select count( distinct customer_id) as total_customers from sales

-- MIN,MAX

select min(price) as min_price from menu

select max(price) as max_price from menu

--AVERAGE

select avg(price) as avg_price from menu

-- ROUND - to round up a value
	
select  round (avg(price),0) as avg_price from menu

-- median - Percentile_cont
	
 select percentile_cont(0.25) within group(order by price) as median from menu

--stdev

select STDDEV(price) from menu 
	
select round (STDDEV(price),2) from menu 	

--GROUPBY - you must have a colum you want to use it with ,then aggregate function(variable)
-- your aggregate column as to be use with the group by

select count (*) from sales

select customer_id ,
count(*) from sales
group by customer_id

select customer_id ,product_id,
count(*) as total_order from sales
group by customer_id,product_id
order by customer_id

--HAVING - in form of where clause  to filter out value use to filter aggregate function
	
select customer_id ,
count(*)  from sales
group by customer_id
having count(*)> 4;


--CASE - conditional statement - add a  new column

select *,
case
   when product_id = 1 then 'Sushi'
   when product_id = 2 then  'Curry'
   else 'Ramen'
end as product_name
from sales