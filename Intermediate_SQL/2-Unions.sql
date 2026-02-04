-- Unions 
-- it's grouped data in the same column not like join

select first_name, last_name
from employee_demographics
union  -- by default it's a distinct output uniqe values to select all just type all after union
select first_name, last_name
from employee_salary;


-- Exmple to use union

select first_name, last_name , 'Old Man' as Label
from employee_demographics
where age > 40 and gender = 'Male'
union
select first_name, last_name , 'Old Lady' as Label
from employee_demographics
where age > 40 and gender = 'Female'
union  
select first_name, last_name, 'Highly Paid Employee' as Label
from employee_salary
where salary > 70000
order by first_name, last_name;