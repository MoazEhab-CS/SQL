-- Window Functions
/*
OVER()     		--> To Use Window Function
ROW_NUMBER() 	--> Uniqe Sequential Number , No Duplicates
RANK()			--> Assign rank by order , equal values take same rank, ranking skips numbers after ties
DENSERANK() 	--> Like RANK , no gaps in ranking numbers
*/


-- the group by output uniqe value
select gender, avg(salary) as average_salary
from employee_demographics dem
join employee_salary sal
	on dem.employee_id = sal.employee_id
group by gender;


-- here over
select gender, avg(salary) over(partition by gender)  -- partition by to seperate values
from employee_demographics dem
join employee_salary sal
	on dem.employee_id = sal.employee_id;
    
    

select gender, salary, 
sum(salary) over(partition by gender order by dem.employee_id) as Rolling_total -- sum salary to the next one based on gender
from employee_demographics dem
join employee_salary sal
	on dem.employee_id = sal.employee_id;
    

-- ROW_NUMBER()
select gender, salary,
row_number() over(partition by gender) as row_num
from employee_demographics dem
join employee_salary sal
	on dem.employee_id = sal.employee_id;
    
    
-- RANK()
select gender, salary,
rank() over(partition by gender order by salary desc) as rank_num
from employee_demographics dem
join employee_salary sal
	on dem.employee_id = sal.employee_id;
    
    
-- DENSE_RANK()
select gender, salary,
dense_rank() over(partition by gender order by salary desc) as dense_rank_num
from employee_demographics dem
join employee_salary sal
	on dem.employee_id = sal.employee_id;