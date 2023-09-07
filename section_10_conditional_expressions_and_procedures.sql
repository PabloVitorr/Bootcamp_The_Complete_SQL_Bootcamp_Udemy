-- CASE -------------------------------------------------------------
SELECT * 
FROM customer;

SELECT 
	customer_id,
CASE 
	WHEN (customer_id < 100) THEN 'Premium'
	WHEN (customer_id BETWEEN 100 AND 200) THEN 'Plus'
	ELSE 'Normal'
END AS customer_class 
FROM customer;

SELECT 
	customer_id,
CASE customer_id 
	WHEN 1 THEN 'Winner'
	WHEN 5 THEN 'Second Place'
	ELSE 'Normal'
END
FROM customer;

SELECT * 
FROM film;

SELECT 
	rental_rate, 
CASE rental_rate
	WHEN 0.99 THEN 1 
	ELSE 0
END
FROM film;

SELECT 
SUM(CASE rental_rate 
	WHEN 0.99 THEN 1 
	ELSE 0
END) AS bargains, 
SUM(CASE rental_rate
	WHEN 2.99 THEN 1 
	ELSE 0
END) AS regular,
SUM(CASE rental_rate 
   WHEN 4.99 THEN 1 
   ELSE 0
END) AS premium
FROM film;