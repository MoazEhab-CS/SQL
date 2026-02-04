-- String Functions
/*
LENGTH  --> Count Strings Character
UPPER   	--> Make String Uppercase
LOWER   	--> Make String Lowercase
TRIM    	--> Remove Spaces Before Or After String
LEFT   	 	--> It Output Number Of Character You Type From Left Side
RIGHT   	--> It Output Number Of Character You Type From Right Side
SUBSTRING   --> It Take Two Values Number You Need To Start From It And Number Of Character You Need To Output
REPLACE		--> replace character you type by the other
LOCATE		--> Index Location Of The Character In String
CONCAT		--> Combine Colums
*/

-- length()
select first_name, length(first_name)
from employee_demographics;


-- upper()
select first_name, upper(first_name)
from employee_demographics;


-- lower()
select first_name, lower(first_name)
from employee_demographics;


-- trim()
select trim('        Hello                ');  -- remove all spaces
select ltrim('        Hello               ');  -- remove left spaces
select rtrim('        Hello               ');  -- remove right spaces


-- left()
select first_name, left(first_name,3)
from employee_demographics;


-- right()
select first_name, right(first_name,3)
from employee_demographics;


-- substring()
select birth_date, substring(birth_date,6,2) as birth_month
from employee_demographics;


-- replace() 
select first_name, replace(first_name, 'a' , 'm')
from employee_demographics;


-- concat()
select first_name, last_name,
concat(first_name,' ',last_name) as full_name
from employee_demographics;