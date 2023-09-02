-- Assessment Test 1 ------------------------------------------------
SELECT * 
FROM payment;

SELECT 
	customer_id, 
	SUM(amount)
FROM payment 
	WHERE staff_id = 2
	GROUP BY customer_id
	HAVING SUM(amount) >= 110.00
	ORDER BY SUM(amount) DESC;

-- ------------------------------------------------------------------
SELECT * 
FROM film;

SELECT 
	COUNT(title)
FROM film
	WHERE title LIKE 'J%';

-- ------------------------------------------------------------------
SELECT * 
FROM customer;

SELECT
	first_name,
	last_name
FROM customer
	WHERE first_name LIKE 'E%'
	AND address_id < 500
	ORDER BY customer_id DESC
	LIMIT 1;