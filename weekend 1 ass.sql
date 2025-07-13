ASSIGNMENT 
>> Using the emptable
.	Which employees have a salary above $60,000?


select 
FIRST_NAME,
LAST_NAME,
SALARY
from `emptable`
where salary > 60000;

7.	List all employees working in the Finance department.

select 
FIRST_NAME,
LAST_NAME
from `emptable`
where DEPARTMENT = 'FINANCE'
;


Retrieve employees whose job title is either 'Manager' or 'Analyst'.

select 
first_name,
last_name
from `emptable`
where (job_title = 'managerr' or job_title = 'analyst')
;

Listall employees ordered b salary fro highest_lowest.

select 
first_name,
last_name
from `emptable`
order by salary desc
;

select
first_name,
last_name
from `emptable`
order by last_name asc
;

select
first_name,
last_name
from `emptable`
where salary < 70000
order by job_title asc
;
 
 
 
 SELECT
	Country,
    `Urbanization Rate (%)`
FROM 'global_health_statistics_part_1'
ORDER BY `Urbanization Rate (%)` DESC
LIMIT 10
;

SELECT
	`Disease Name`,
    `Recovery Rate (%)`
FROM health_data
ORDER BY (`Recovery Rate (%)`) DESC
LIMIT 5
;

SELECT *
FROM finance
; 

SELECT *
FROM health_data
;

RENAME table `bajaj-2003-2020`
TO finance
;

RENAME table global_health_statistics_part_1 
TO health_data
;

RENAME table paymentsql_124636 
TO payments
;

RENAME table `samplestore assignment` 
TO sales_dataset
;

end


