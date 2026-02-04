-- Group By

select *
from parks_and_recreation.employee_demographics;

-- grouped data from coulmn with uniqe value like (distinct)
select  gender
from parks_and_recreation.employee_demographics
group by gender;


-- we can use functions like count() , avg(), min() and max()

select gender, count(gender), avg(age), min(age) , max(age)
from parks_and_recreation.employee_demographics
group by gender;



select occupation
from parks_and_recreation.employee_salary
group by occupation;



-- order by

select *
from parks_and_recreation.employee_demographics
order by first_name asc; -- Sorts in ascending order (can remove asc)



select *
from parks_and_recreation.employee_demographics
order by first_name desc; -- Sorts in descending order



-- we can ascending by 2 or more columns
select *
from parks_and_recreation.employee_demographics
order by gender , age;


-- having it using after group by 

select occupation, sum(salary)
from parks_and_recreation.employee_salary
group by occupation
having sum(salary) < 50000;


-- we can use where and having together

select occupation, avg(salary)
from parks_and_recreation.employee_salary
where occupation like '%manager%'
group by occupation
having avg(salary) > 50000;