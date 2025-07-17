use sakila;
select *
from customer;



SELECT
	first_name,
    last_name,
    email
FROM customer
;

SET SQL_SAFE_UPDATES = 0;


SELECT
	SUBSTRING_INDEX(SUBSTRING_INDEX(email, '@', 1), '.', -1) AS email_last_name
FROM customer;

ALTER table customer
ADD COLUMN email_last_name VARCHAR(50) 
;

UPDATE customer
SET email_last_name = SUBSTRING_INDEX(SUBSTRING_INDEX(email, '@', 1), '.', -1)
;



USE sakila;

SELECT *
FROM customer
;

