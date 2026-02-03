# Select_Statement

select *   # * select all data form table 
from parks_and_recreation.employee_demographics; # ; to known the sql that you end code

select age       # select one column from table
from parks_and_recreation.employee_demographics;


select first_name, last_name   # select more than one column seperate by ','
from parks_and_recreation.employee_demographics;



select distinct gender      # distinct it use to print uniqe value only
from parks_and_recreation.employee_demographics;


select age , age + 10    # can do mathimatics operation on a column 
from parks_and_recreation.employee_demographics;