USE employees;

# example select all and from

SELECT 
first_name,
last_name,
hire_date
FROM employees;


CREATE DATABASE IF NOT EXISTs employees;


SELECT *
FROM employees;


SELECT
emp_no,
birth_date,
first_name
FROM employees;



# where example

SELECT *
FROM employees
WHERE gender = 'M';


SELECT
emp_no,
birth_date,
first_name
FROM employees
WHERE first_name = 'Georgi';

SELECT
birth_date,
first_name
FROM employees
WHERE birth_date ='1954-01-01';


SELECT *
FROM departments;

#example AND -true both sides
 
SELECT 
birth_date,
gender,
first_name
FROM employees
WHERE first_name = 'denis' AND gender ='m';


# example OR false if both sides are false one must be true

SELECT 
birth_date,
gender,
first_name
FROM employees
WHERE first_name ='Denis' OR  gender ='M';


SELECT 
birth_date,
gender,
first_name,
last_name
FROM employees
WHERE last_name ='Denis' OR  gender ='F';

SELECT 
first_name,
birth_date,
gender
FROM employees
WHERE first_name ='georgi'OR 'parto'OR 'christain';


# AND ,OR use together example

SELECT 
first_name,
birth_date,
gender
FROM employees
WHERE first_name ='Denis' AND (gender ='M' OR gender =' F');


# IN  example wen there is OR 

SELECT *
FROM employees
WHERE first_name IN ("parto","Georgi","christain");


-- not in example

SELECT*
FROM employees
WHERE first_name NOT IN ('parto','Georgi','christain');


# like example
# start with

SELECT *
FROM employees
WHERE first_name LIKE('mark%');

SELECT *
FROM employees
WHERE last_name LIKE ('auria%');

# end with

SELECT *
FROM employees
WHERE first_name LIKE('%ar');

SELECT *
FROM employees
WHERE last_name LIKE ('%lo');

# between end and start

SELECT*
FROM employees
WHERE first_name LIKE ('%ar%');

--- like in between start with end with

SELECT*
FROM employees
WHERE first_name LIKE 'a%r';

-- like more example underscore start with 
SELECT*
FROM employees
WHERE first_name LIKE 'mark_';


-- not like example


SELECT*
FROM employees
WHERE first_name NOT LIKE 'mar%';


#  between  and  example

SELECT
first_name,
emp_no,
birth_date
FROM employees
WHERE hire_date BETWEEN  "1990-01-01" AND "2000-01-01";


# not between 


SELECT
first_name,
emp_no,
birth_date
FROM employees
WHERE hire_date NOT  BETWEEN  "1990-01-01" AND "2000-01-01";

# not null example


SELECT *
FROM employees
WHERE first_name IS NOT NULL;

 # where example
 
 SELECT *
 FROM employees
 WHERE hire_date >= '1999-01-01';


# disntint example

SELECT distinct 
gender
FROM employees;

-- AGGREGATE function example
#count

SELECT 
COUNT( emp_no) as 'total_emp'
FROM employees;


#sum 

SELECT
SUM(salary) as total_salary
FROM salaries;

SELECT
SUM(salary) as total_salary
FROM salaries;


# order by example

SELECT
emp_no,
first_name,
last_name
FROM employees
ORDER BY first_name ASC;

SELECT
emp_no,
first_name,
last_name
FROM employees
ORDER BY first_name DESC;

#where 

SELECT*
FROM salaries
WHERE salary>10000
ORDER BY salary DESC LIMIT 10;

# aggregate 

SELECT 
COUNT(emp_no) 
FROM employees;

SELECT 
SUM(salary) as 'total_salary'
FROM salaries
WHERE from_date ='2000-01-01';

# group by example , ORDER BY

SELECT
first_name,
COUNT(first_name) as count_name
FROM employees
GROUP BY first_name
ORDER BY first_name ;


# extract example and group by


SELECT
extract(YEAR from hire_date) as "the_year",
COUNT(emp_no)
FROM employees
GROUP BY the_year;

SELECT
emp_no,
extract(YEAR from hire_date) as "the_year"
FROM employees;

SELECT
emp_no,
extract(YEAR from hire_date) as "the_year",
COUNT(emp_no)
FROM employees
GROUP BY emp_no;


# condidtion clause having

SELECT 
emp_no,
SUM(salary) as 'total_salary'
FROM salaries
WHERE from_date ='2000-01-01'
GROUP BY emp_no
HAVING Total_salary >=  60000;

# example
/*
extract a list of  all the  first name that are encounter more than 200 times and
let the data refer to people that are hired 1st of jan 1999
*/

SELECT
first_name,
COUNT(first_name) as count_name
FROM employees
WHERE hire_date > '1999-01-01'
GROUP BY first_name
HAVING COUNT(first_name) < 200
ORDER BY count_name DESC ;


# project

SELECT 
first_name,
count(first_name) as count_name
FROM employees
GROUP BY first_name
HAVING count_name > 250;

SELECT
extract( YEAR from hire_date )as ' the_year',
count(emp_no) as total_emp
FROM employees
GROUP BY the_year















 


