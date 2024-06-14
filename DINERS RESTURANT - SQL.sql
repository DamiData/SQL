-- DINER RESTURANT 

-- what is the total amount each customer spent at the resturant

select  sales.customer_id , sum(price) as total_amount
from sales
join menu on sales.product_id=menu.product_id
group by  customer_id 
order by customer_id

-- What is  the most purchased  items on  the menu and how many times it was
---	purchased by all customers

select menu.product_name, Count(sales.product_id) as most_purchase_item
from sales 
join menu on sales.product_id = menu.product_id
group by menu.product_name
order by most_purchase_item desc 
limit 1

-- which items was the most popular for each customers

select  sales.customer_id , menu.product_name,count(sales.product_id) as popular_items
from sales join menu 
on sales.product_id= menu.product_id
group by sales.customer_id,menu.product_name
order by customer_id  ,popular_items desc


--CTE - common table expression used to calculate temporary table 
-- for analysis or manipulation

WITH table_a as (
	select * from sales
	join menu on sales.product_id = menu.product_id
)

select customer_id,sum(price) from table_a
group by customer_id

-- if each $1 spent equals to 10 points  and sushi has 
--2x points multiplier.how 
--many points would each customer have?

WITH point_cte as (
select menu.product_id,
CASE 
	when product_id = 1 then price + 20
	else price * 10
	end as points
	from menu
)

select sales.customer_id,sum(point_cte.points)as total_points 
	from sales join  point_cte  
	on sales.product_id = point_cte.product_id
    group by sales.customer_id
    order by sales.customer_id