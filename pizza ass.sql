use new_data;

SELECT *
FROM customer_orders
;

SELECT *
FROM pizza_names
;

SELECT *
FROM pizza_recipe
;

SELECT *
FROM pizza_toppings-
;

SELECT *
FROM runner_orders
;

SELECT *
FROM runners
;

SELECT
	COUNT(order_id) AS Total_P_O
FROM customer_orders
;

SELECT 
	runner_id,
    COUNT(*) AS delivery_successful
FROM runner_orders
GROUP BY runner_id
;

SELECT
	pizza_name,
    COUNT(pizza_name) AS delivered_pizza
FROM customer_orders AS c_o
INNER JOIN runner_orders r_o 
ON c_o.order_id = r_o.order_id
INNER JOIN pizza_names AS p_n 
ON c_o.pizza_id = p_n.pizza_id
GROUP BY p_n.pizza_name
;






write a query to show how many pizzas were ordered.
-- write a query to show how many successful orders were delivered by each runner
-- write a query to show the number of each type of pizza that was delivered

