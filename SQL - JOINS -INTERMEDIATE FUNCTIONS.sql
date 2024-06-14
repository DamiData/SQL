--JOINS - use to model or combine and link table together

select *from sales

select * from menu
	
select * from members
-- join
select * from sales
join menu
on sales.product_id=menu.product_id

-- left join	
select * from sales
left join menu on sales.product_id = menu.product_id

-- join	
select * from sales
join members on sales.customer_id=members.customer_id

 -- full outer 
	
select * from sales
 full outer  join members
on sales.customer_id=members.customer_id

-- cross join

select * from sales
cross join  members

--- joining three tables
	
select * from sales 
join menu  on
sales.product_id=menu.product_id
join members on sales.customer_id=members.customer_id

