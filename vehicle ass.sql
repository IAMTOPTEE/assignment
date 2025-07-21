





USE new_data;

SELECT *
FROM locations;

SElect *
from make_details;

SELECT *
FROM STOLEN_VEHICLES;





SET SQL_SAFE_UPDATES = 0;

UPDATE stolen_vehicles
SET date_stolen = str_to_date(date_stolen,'%m/%d/%Y')
;



ALTER TABLE stolen_vehicles
RENAME COLUMN ï»¿vehicle_id TO vehicle_id
;

select 
dayname(date_stolen) as day_name,
 COUNT(*) AS total_v_stolen
FROM stolen_vehicles
GROUP BY day_name
ORDER BY total_v_stolen DESC
;


SELECT 
	vehicle_type,
	COUNT(*) AS total_v_stolen
FROM stolen_vehicles
GROUP BY vehicle_type
ORDER BY total_v_stolen DESC
;


SELECT
	region
    vehicle_type,
    COUNT(*) AS total_v_stolen
FROM stolen_vehicles AS s
INNER JOIN locations AS l
ON s.location_id = l.location_id
GROUP BY l.region, s.vehicle_type
ORDER BY l.region ASC, total_v_stolen DESC
;


SELECT
	AVG(2025 - model_year) AS avg_vehicle_age
FROM stolen_vehicles
WHERE model_year IS NOT NULL
;


SELECT
	vehicle_type,
   round(AVG(2025 - model_year)) AS avg_vehicle_age
FROM stolen_vehicles
WHERE model_year IS NOT NULL
GROUP BY vehicle_type
ORDER BY avg_vehicle_age DESC
;


SELECT 
	region,
	COUNT(*) AS total_v_stolen
FROM stolen_vehicles AS s
INNER JOIN locations AS l 
ON s.location_id = l.location_id
GROUP BY l.region
ORDER BY total_v_stolen DESC
;


SELECT
	region,
    COUNT(*) AS total_v_stolen,
    population,
    density
FROM stolen_vehicles AS s
INNER JOIN locations AS l 
ON s.location_id = l.location_id
GROUP BY region, population, density
ORDER BY total_v_stolen DESC
; n







--What day of the week are vehicles most often and least often stolen?

What types of vehicles are most often and least often stolen? Does this vary by region?

What is the average age of the vehicles that are stolen? Does this vary based on the vehicle type?"

--Which regions have the most and least number of stolen vehicles? What are the characteristics of the regions?
