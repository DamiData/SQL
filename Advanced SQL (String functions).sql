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
	
select substring('akande ,sekinat'  from 8 for 6)
select substring ('hello, world:' from 8 for 5)

--POSITION():Returns the position of the first occurence of a substring within a string
	
select position ( 'Sekinat' in 'Akande Sekinat')
select position ( 'World' in 'Hello  World')

--REPLACE(): Replace all occurences of a Specified substring within a string
	
select replace ('akande sekinat','sekinat','damilola')
select replace ('hello, world:','world','postgreSQL')
select replace ('hello, world:','hello','postgreSQL')

--CONCAT():Concatenates two or more string into a single string
	
select concat('akande',' ','sekinat')
select concat('akande'|| ' '|| 'sekinat')
select concat('hello',', ','world')

--CONCAT_WS-Concat with seperator
	
select concat_ws(' ', 'akande','sekinat')
select concat_ws(',', 'akande','sekinat')

--SPLIT_PART-Splits a string on a specified delimiter and returns a specific part
	
select split_part('akande,sekinat,damilola',',',2)
select split_part('hello,world,postgreSQL',',',3)

--LEFT(): Returns the leftmost n characters from string
	
select left('Akande,Sekinat',4)
select left('Akande,Damilola',6)

--RIGHT(): Returns the rightmost n characters from string

select right('Akande,Sekinat',7)
select right('Akande,Damilola',5)


--CAST():Convert a column datatype to another

select * from categories
select category_id, cast(category_name as text) as category_name from categories


