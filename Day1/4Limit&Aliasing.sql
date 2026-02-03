-- Limit & Aliasing 

select *
from parks_and_recreation.employee_demographics
limit 3;  -- output first 3 rows only


select *
from parks_and_recreation.employee_demographics
limit 3,2;  -- here i told to output 2 rows after third row



-- Aliasing > change column name

select gender , avg(age) as avg_age  -- as to change column name (we can remove it) and it will work correct
from parks_and_recreation.employee_demographics
group by gender
having avg_age > 40;