-- where clause

select *
from parks_and_recreation.employee_salary
where first_name = "Ron";   -- we search about value has first_name is Ron




select *
from parks_and_recreation.employee_salary
where salary > 50000;   -- we search about data has salary greater than 50000 only

/* 
we can use more than operation statment like
>=   OR  <=
*/




select *
from parks_and_recreation.employee_demographics
where gender != 'Male';     -- use != it mean not equal to 


/*
we can also use Logical Operators
and
or 
not
*/


select *
from parks_and_recreation.employee_demographics
where birth_date > '1985-01-01'
and gender = 'Male';




-- can write more than conditional statments

select *
from parks_and_recreation.employee_demographics
where (first_name = 'Tom' and age = 36) or age > 50;




/*
like Statement
has special character
you can write it in first or middle or end of word
and can use Both in one 
% means anything
_ means spacific value
*/


select *
from parks_and_recreation.employee_demographics
where first_name like 'An%'; -- it means search for Jer and anything after it



select *
from parks_and_recreation.employee_demographics
where first_name like 'An__'; -- it means search for An and two character after only


select *
from parks_and_recreation.employee_demographics
where first_name like 'A__%';  -- use Both in one