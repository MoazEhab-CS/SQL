-- Subqueries

select *
from employee_demographics
where employee_id in   -- here we select all data if employee_id in salary table have dapt_id = 1
					(select employee_id
						from employee_salary
						where dept_id = 1)
;



select first_name, salary,avg(salary)  -- it will output avg(salary) the same like salary
from employee_salary
group by first_name ,salary;

-- to solve it we use subquery
select first_name, salary,
(select avg(salary)
from employee_salary) as average_salary
from employee_salary;