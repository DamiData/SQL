use employees;
# store routine


DELIMITER  //
CREATE PROCEDURE P_get_all_employees()
BEGIN
  SELECT* FROM employees;
END  //
DELIMITER ;

DELIMITER $$
CREATE PROCEDURE P_get_all_employees()
BEGIN
  SELECT* FROM employees;
END  $$
DELIMITER ;

SELECT
AVG(salary)average_salary
FROM salaries;

DELIMITER $$
CREATE PROCEDURE P_average_salary()
BEGIN
    SELECT
	AVG(salary)average_salary
    FROM salaries; 
END  $$
DELIMITER ;

#PARAMETIC PROCEDURE
select
e.first_name,
e.last_name,
e.hire_date,
s.salary
from employees e
join salaries s on e.emp_no =s.emp_no
where e.emp_no =10001

#----------- input
DELIMITER //
CREATE PROCEDURE P_emp_info(in stupid integer)
BEGIN
  select
e.first_name,
e.last_name,
e.hire_date,
s.salary
from employees e
join salaries s on e.emp_no =s.emp_no
where e.emp_no =stupid;
END //
DELIMITER ;

  select
e.first_name,
e.last_name,
e.hire_date,
sum(s.salary)
from employees e
join salaries s on e.emp_no =s.emp_no
where e.emp_no =10001;

select
count(*)
from employees
where gender ="m";

DELIMITER //
CREATE PROCEDURE P_count_male_emp(out stupid int)
BEGIN
 select
count(*)
from employees
where gender ="m"; 
END  //
DELIMITER ;

#combination of input and output
DELIMITER //
CREATE PROCEDURE P_emp_average(in p_emp_no int , out p_average_salary decimal(10,2))
BEGIN
 select
 avg(salary)
 into p_average_salary 
 from employees e
 join salaries s on e.emp_no = s.emp_no
 where e.emp_no = p.emp_no;
END  //
DELIMITER ;



