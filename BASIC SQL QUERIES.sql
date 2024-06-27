-- BASIC QUERIES

--SELECT STATEMENT

select * from sales;

select * from menu;

select * from sales
	select * from members
	select customer_id
	from members

select customer_id,product_id 
from sales;


--LIMIT -Specify number of rows or column

select * from sales
limit 5;

select customer_id
	from sales
   limit 4;

-- WHERE CLAUSE -filter row base on citeria or condition

select customer_id
	from sales
	where customer_id ='B'

	select customer_id 
	from members
	where customer_id ='B'
	
select customer_id
from sales
where customer_id = 'A';

select product_id
from sales
where product_id = 1

-- COMPARISON OPERATORS - filter rows

select * from sales
where product_id > 1

--LOGICAL OPERATOR - OR , AND , LIKE 

select customer_id,product_id
from sales 
where customer_id ='A' and product_id = 2;


select * from sales
where customer_id = 'B' OR product_id = 2;

 -- like start with (S%)
	
select * from menu
where product_name like 'su%';
 
-- like ends with (%y)

select * from menu
where product_name like '%y';

select * from menu
where product_name ilike '%Y';

-- IN,BETWEEN, NOT BETWEEN , IS NULL,ORDERBY

select * from menu
where product_name in ('sushi','curry');

select * from menu
where price  between 9 and 12;

select * from menu
where price not between 9 and 12;

select * from menu
where product_id isnull;


select * from sales;

select * from sales
 order by  product_id asc;

select * from sales
 order by  product_id asc,customer_id desc;


-- ALIAS - TO rename output column or result

select customer_id as customer_name,
	order_date,
	product_id as product_name 
	from sales

--CAST(): Convert a column data type to another

select * from sales	

select customer_id , cast(product_id as text) as product_name from sales






