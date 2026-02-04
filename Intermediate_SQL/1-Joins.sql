-- joins 

select * 
from parks_and_recreation.employee_demographics;

select * 
from parks_and_recreation.employee_salary;

-- join two table by id if table has id number more than other will not be join
select age , occupation    -- select any column from both of them
from employee_demographics
inner join employee_salary
	on employee_demographics.employee_id = employee_salary.employee_id;
    


select *  
from employee_demographics
left join employee_salary    -- join first to second if value missed in second will be null values
	on employee_demographics.employee_id = employee_salary.employee_id;
    
    
select *  
from employee_demographics
right join employee_salary    -- join second to first if value missed in first will be null values
	on employee_demographics.employee_id = employee_salary.employee_id;



-- self join

select *
from employee_salary as es1
join employee_salary    es2
	on es1.employee_id= es2.employee_id;


-- join multiple tables together

select *   
from employee_demographics as dem
inner join employee_salary as sal
	on dem.employee_id = sal.employee_id
inner join parks_departments as pd
	on sal.dept_id = pd.department_id;