select * from categories
select * from customer_customer_demo
select * from customer_demographics
select * from customers
select * from employees_territories
select * from employees
select * from order_details
select *from orders
select * from products
select * from region
select * from shippers
select * from suppliers
select * from territories
select * from us_states


--select all categories names with there description  from the category table

select  category_name , description
from categories

-- select contact name,customer_id and company name of all customers in london 
	
select contact_name,customer_id,company_name
from customers
where city = 'London'

-- marketing managers and sales representatives have asked you to select all available columns
-- in sulpliers tables that have fax number 

select * from suppliers
where 'fax' is not null


-- select a list of customer_id from orders table with required date between jan 1 ,1997
-- and jan 1 ,1998 and with freight under 100 units

select customer_id
from orders
where required_date between '1997-01-01' and  '1998-01-01' 
and  freight < 100

-- select a list company names and contact names of all owners  
-- from the customers from mexico,sweden and germany

select company_name,contact_name
from customers
where country in ('Mexico' ,'Sweden','Germany')

-- count the number of discountinued product in products table
	
select count(discontinued)
from products

--select a list of category names and description of all categories beginning with 'Co'
-- from the categories table

select category_name,description
from categories
where category_name like 'Co%'

-- select all company names,city,country and postal code from the  suppliers table
-- with the word 'rue' in their  address .this list should be ordered alphabetically
--by the company name

select company_name,city,country,postal_code
from suppliers
where address like '%rue%'
order by company_name asc

-- select product_id and the total quantity for each product in ther order details table
	
select product_id , sum(quantity) as total_quantity
from order_details
group by product_id


----select customer name and  address of all customers with orders that 
--shipped using speedy express-10

select customers.customer_name,customers.address 
from customers
join orders on customers.customer_id= orders.customer_id
join shippers on customers.company_name = shippers.company_name
where company_name = 'Speedy Express'

-- select a list of suppliers contaning company name,contact name,
-- contact title and region description -11

select company_name,contact_name,contact_title,region
from suppliers

--select all product names from the product table that are condiments
	
select product_name
from products
join categories on products.category_id = categories.category_id
where category_name = 'Condiments'

-- select a list of customers names who have no orders in the orders tables -13

select customer_id
from orders
where customer_id is null

-- Add a shipper name 'Amazon' to the shipper table using 
	
insert into shippers(shipper_id,company_name)
values(7,'Amazon')


-- change the company_name from 'Amazon' to Amazon prime shipping 
---in the shipper table using SQL update 

update shippers
set company_name ='Amazon prime shipping'
where company_name ='Amazon'
 
-- select a compelect list of company names from  the shippers table.
--incude freight totals rounded 
-- to the  nearest whole number for each shipper from the orders table  for those shipper
-- with orders-16

select shippers.company_name,round(sum(orders.freight),0)As Total_freight
from shippers
join

-- select employess first and last names from the employees table by
-- combinig the 2 column aliased as 'Display name' .the combine format should be
-- last name,first name

select concat(last_name,' ',first_name) as Display_name
from employees

-- Add yourself to customers table with an order for 'Grandma's Boysenberry Spread'.

select product_id
from products
where product_name ='Grandma s Boysenberry Spread'

-- Remove yourself yourself and your order from the data base.


--- select a list of products from the product table along with the total unit in stock for each
-- products.Give the computed column a name using alias,'TotalUnits' include only products with
--TotalUnits greather than 100

select product_name,sum(units_in_stock) as Total_Units
from products
group by product_name 	
having sum(units_in_stock) > 100