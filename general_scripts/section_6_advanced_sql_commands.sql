-- Advanced SQL Commands --------------------------------------------
-- Tiemestamps and Extract Part One ---------------------------------
SHOW ALL;
SHOW TIMEZONE;

SELECT NOW();
SELECT TIMEOFDAY();
SELECT CURRENT_TIME;
SELECT CURRENT_DATE;

-- Timestamps and Extract Part Two ----------------------------------
SELECT * 
FROM payment;

SELECT 
	EXTRACT(YEAR FROM payment_date) AS pay_year
FROM payment;

SELECT 
	EXTRACT(MONTH FROM payment_date) AS pay_month
FROM payment;

SELECT 
	EXTRACT(QUARTER FROM payment_date) AS pay_quarter
FROM payment;

SELECT AGE(payment_date)
FROM payment;

SELECT 
	TO_CHAR(payment_date, 'MONTH - YYYY')
FROM payment;

SELECT 
	TO_CHAR(payment_date, 'mon/dd/YYYY')
FROM payment;

SELECT 
	TO_CHAR(payment_date, 'MM-dd-YYYY')
FROM payment;

SELECT 
	TO_CHAR(payment_date, 'dd-MM-YYYY')
FROM payment;

-- Timestamps and Extract Challege ----------------------------------
SELECT 
	DISTINCT(TO_CHAR(payment_date, 'MONTH')) AS payment_month
FROM payment;

SELECT 
	COUNT(payment_date)
FROM payment 
	WHERE EXTRACT(DOW FROM payment_date) = 1;

-- Mathematical Functions and Operators -----------------------------
SELECT 
	ROUND(rental_rate/replacement_cost, 4) * 100 AS porcent_cost
FROM film;

SELECT 
	0.1 * replacement_cost AS deposit
FROM film;

-- String Functions and Operators -----------------------------------
SELECT * FROM customer;

SELECT 
	LENGTH(first_name) 
FROM customer;

SELECT 
	first_name || ' ' || last_name AS full_name
FROM customer;

SELECT 
	UPPER(first_name) || ' ' || UPPER(last_name) AS full_name 
FROM customer;

SELECT 
	first_name || last_name || '@gmail.com' 
FROM customer;

SELECT 
	LOWER(LEFT(first_name, 1)) || LOWER(last_name || '@gmail.com') 
FROM customer;

-- SubQuery ---------------------------------------------------------
SELECT * 
FROM film;

SELECT 
	title, 
	rental_rate 
FROM film 
	WHERE rental_rate > (SELECT AVG(rental_rate) FROM film);

SELECT * 
FROM rental;

SELECT * 
FROM inventory;

SELECT 
	film_id, 
	title
FROM film
	WHERE film_id IN
		(SELECT 
			inventory.film_id 
		FROM rental 
			JOIN inventory ON inventory.inventory_id = rental.inventory_id
			WHERE rental.return_date BETWEEN '2005-05-29' AND '2005-05-30')
	ORDER BY title;

SELECT 
	first_name, 
	last_name 
FROM customer AS c 
	WHERE EXISTS
		(SELECT * 
		FROM  payment AS p 
		WHERE p.customer_id = c.customer_id 
		AND amount > 11);

SELECT 
	first_name, 
	last_name 
FROM customer AS c 
	WHERE NOT EXISTS
		(SELECT * 
		FROM  payment AS p 
		WHERE p.customer_id = c.customer_id 
		AND amount > 11);

-- Self Join --------------------------------------------------------
SELECT *  
FROM film;

SELECT 
	title, 
	length 
FROM film 
WHERE length = 117;

SELECT 
	f1.title, 
	f2.title, 
	f1.length
FROM film AS f1
	JOIN film AS f2 ON f1.film_id != f2.film_id
	AND f1.length = f2.length;