-- Case Statements

select first_name, last_name, age,
case
	when age <= 30 then 'Young'
    when age between 31 and 50 then 'Old'
    when age >= 50 then "On Death's Door"
end age_bracket
from employee_demographics;



select first_name, last_name, salary,
case
	when salary < 50000 then salary * 1.05 -- it means 5% Pay Increase
    when salary > 50000 then salary * 1.07 -- it means 7% Pay Increase 
end new_salary
from employee_salary;