-- JOINS ------------------------------------------------------------
-- AS Statement -----------------------------------------------------
SELECT 
	COUNT(amount) 
FROM payment;

SELECT 
	COUNT(amount) AS num_transactions
FROM payment;

SELECT 
	customer_id,
	SUM(amount) AS total_spent
FROM payment
	GROUP BY customer_id;
	
SELECT 
	customer_id,
	SUM(amount) AS total_spent
FROM payment 
	GROUP BY customer_id 
	HAVING SUM(amount) > 100;

-- INNER JOIN (JOIN) ------------------------------------------------
SELECT 
	payment.payment_id, 
	payment.customer_id, 
	customer.first_name
FROM payment
	JOIN customer ON payment.customer_id = customer.customer_id;

-- FULL OUTER JOIN --------------------------------------------------
SELECT * 
FROM customer
	FULL OUTER JOIN payment ON customer.customer_id = payment.customer_id
	WHERE customer.customer_id IS null
	OR payment.payment_id IS null;

SELECT 
	COUNT(DISTINCT(customer_id))
FROM customer;

-- LEFT OUTER JOIN --------------------------------------------------
