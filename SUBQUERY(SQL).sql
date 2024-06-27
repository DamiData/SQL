
-- SUBQUERY- Inner query or nested quer(select,from,where,having)

select * from sales
	
select * from sales
where order_date=  (select max (order_date)from sales)


select * from sales
join  menu on sales.product_id = menu.product_id
where  price= (select max (price)from menu)


--CTE - Common table experession /subquery

with sales_table as (
select * from sales
join  menu on sales.product_id = menu.product_id	
)

select * from sales_table 
where order_date = (select min(order_date)from sales)


--


