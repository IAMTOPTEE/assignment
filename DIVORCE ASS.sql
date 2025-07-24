USE new_data;

SELECT *
FROM `employee attrition`
;


SELECT 
	ROUND(
        (SELECT COUNT(MaritalStatus)
        FROM `employee attrition`
        WHERE MaritalStatus = 'Divorced') 
        * 100
        /
        (SELECT COUNT(MaritalStatus)
        FROM `employee attrition`),2)
         AS DIV_PERCENTAGE
        ;
        
