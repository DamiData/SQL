--STRING FUNCTIONS

--LENGTH:Returns the number of characters in a string.

select length('Hello,world')
	
select *,length(product_name)from menu
	
--LOWER :Converts all characters in a string to lowercase
	
select lower('Hello,world')	

select *,lower(product_name)from menu

-- UPPER:Converts all characters in a string to uppercase
	
select upper('Hello,world')	

select *,upper(product_name)from menu

--TRIM:Remove the longest string containing only the specified characters from the start and end

select trim('    hello,world:    ')

select Ltrim('    hello,world:    ')

select Rtrim('    hello,world:    ')

---SUBSTRING():Extracts a substring from a string