-- Aggregation Functions --------------------------------------------
SELECT * 
FROM film;

SELECT 
	MIN(replacement_cost) 
FROM film;

SELECT 
	MAX(replacement_cost) 
FROM film;

SELECT 
	MAX(replacement_cost) 
FROM film;

SELECT 
	MAX(replacement_cost), 
	MIN(replacement_cost) 
FROM film;

SELECT 
	COUNT(*)
FROM film;

SELECT 
	AVG(replacement_cost)::NUMERIC(12,4) 
FROM film;

SELECT 
	ROUND(AVG(replacement_cost),4) 
FROM film;

SELECT 
	SUM(replacement_cost)
FROM film;

-- GROUP BY ---------------------------------------------------------
SELECT * 
FROM payment;

SELECT 
	customer_id, 
	SUM(amount)
FROM payment 
	GROUP BY customer_id
	ORDER BY SUM(amount) DESC;

SELECT 
	customer_id, 
	COUNT(amount)
FROM payment 
	GROUP BY customer_id 
	ORDER BY COUNT(amount) DESC;

SELECT 
	customer_id, 
	staff_id, 
	SUM(amount) 
FROM payment 
	GROUP BY staff_id, customer_id
	ORDER BY customer_id, staff_id;
	
SELECT 
	customer_id, 
	staff_id, 
	SUM(amount) 
FROM payment 
	GROUP BY staff_id, customer_id 
	ORDER BY SUM(amount) DESC;

SELECT 
	DATE(payment_date) 
FROM payment;

SELECT 
	DATE(payment_date), 
	SUM(amount)
FROM payment 
	GROUP BY DATE(payment_date)
	ORDER BY SUM(amount) DESC;

-- GROUP BY Challenge -----------------------------------------------
SELECT * 
FROM payment;

SELECT 
	staff_id, 
	COUNT(amount)
FROM payment
	GROUP BY staff_id
	ORDER BY COUNT(amount) DESC;

SELECT * 
FROM film;

SELECT 
	rating, 
	ROUND(AVG(replacement_cost), 4)
FROM film 
	GROUP BY rating
	ORDER BY AVG(replacement_cost) DESC;

SELECT * 
FROM payment;

SELECT 
	customer_id,
	SUM(amount)
FROM payment 
	GROUP BY customer_id 
	ORDER BY SUM(amount) DESC
	LIMIT 5;

-- HAVING -----------------------------------------------------------
SELECT * 
FROM payment;

SELECT 
	customer_id, 
	SUM(amount) 
FROM payment 
	GROUP BY customer_id
	HAVING SUM(amount) > 100;

SELECT * 
FROM customer

SELECT 
	store_id, 
	COUNT(customer_id)
FROM customer
	GROUP BY store_id
	HAVING COUNT(customer_id) > 300;

-- HAVING Challenge -------------------------------------------------
SELECT * 
FROM payment;

SELECT 
	customer_id, 
	COUNT(amount)
FROM payment
	GROUP BY customer_id
	HAVING COUNT(amount) >= 40
	ORDER BY COUNT(amount) DESC;

SELECT * 
FROM payment;

SELECT 
	customer_id,
	SUM(amount)
FROM payment
	WHERE staff_id = 2
	GROUP BY customer_id
	HAVING SUM(amount) > 100.00
	ORDER BY SUM(amount) DESC;