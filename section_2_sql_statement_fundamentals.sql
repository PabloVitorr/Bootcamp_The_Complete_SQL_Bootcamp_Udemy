-- SELECT Statement -------------------------------------------------
SELECT * 
FROM actor;

SELECT 
	first_name 
FROM actor;

SELECT 
	first_name, 
	last_name 
FROM actor;

SELECT 
	last_name, 
	first_name 
FROM actor;
-- Challenge SELECT -------------------------------------------------
SELECT * 
FROM customer;

SELECT 
	first_name, 
	last_name, 
	email 
FROM customer;

-- SELECT DISTINCT --------------------------------------------------
SELECT * 
FROM film;

SELECT 
	DISTINCT(release_year) 
FROM film;

SELECT 
	DISTINCT(rental_rate) 
FROM film;

-- Challenge SELECT DISTINCT ----------------------------------------
SELECT * 
FROM film;

SELECT 
	DISTINCT(rating) 
FROM film;

-- COUNT ------------------------------------------------------------
SELECT * 
FROM payment;

SELECT 
	COUNT(*) 
FROM payment;

SELECT 
	COUNT(amount) 
FROM payment;

SELECT 
	COUNT(DISTINCT(amount)) 
FROM payment;

-- SELECT WHERE Part Two --------------------------------------------
SELECT * 
FROM customer;

SELECT * 
FROM customer 
	WHERE first_name = 'Jared';

SELECT * 
FROM film;

SELECT * 
FROM film 
	WHERE rental_rate > 4.00;

SELECT * 
FROM film 
	WHERE rental_rate > 4.00 
	AND replacement_cost >= 19.99;

SELECT * 
FROM film 
	WHERE rental_rate > 4.00 
	AND replacement_cost >= 19.99
	AND rating = 'R';

SELECT title 
FROM film
	WHERE rental_rate > 4.00 
	AND replacement_cost >= 19.99
	AND rating = 'R';

SELECT COUNT(title) FROM film
	WHERE rental_rate > 4.00 
	AND replacement_cost >= 19.99 
	AND rating = 'R';

SELECT COUNT(*) FROM film
	WHERE rental_rate > 4.00 
	AND replacement_cost >= 19.99 
	AND rating = 'R';

SELECT 
	COUNT(*) 
FROM film 
	WHERE rating = 'R' 
	OR rating = 'PG-13';

SELECT * 
FROM film 
	WHERE rating != 'R';

-- Challenge SELECT WHERE -------------------------------------------
-- Challenge 1
SELECT 
	email 
FROM customer
	WHERE first_name = 'Nancy' 
	AND last_name = 'Thomas';

-- Challenge 2
SELECT 
	description
FROM film
	WHERE title = 'Outlaw Hanky';

-- Challenge 3
SELECT 
	phone 
FROM address
	WHERE address = '259 Ipoh Drive';

-- ORDER BY ---------------------------------------------------------
SELECT * 
FROM customer
	ORDER BY first_name;

SELECT * 
FROM customer
	ORDER BY first_name ASC;

SELECT * 
FROM customer 
	ORDER BY first_name DESC;
	
SELECT 
	store_id, 
	first_name, 
	last_name 
FROM customer 
	ORDER BY store_id, first_name;

SELECT 
	store_id, 
	first_name, 
	last_name 
FROM customer
	ORDER BY store_id DESC, first_name ASC;

-- LIMIT ------------------------------------------------------------
SELECT * 
FROM payment
	ORDER BY payment_date DESC
	LIMIT 5;

SELECT * 
FROM payment
	WHERE amount != 0.00
	ORDER BY payment_date DESC
	LIMIT 5;
	
-- Challenge ORDER BY -----------------------------------------------
SELECT 
	customer_id 
FROM payment 
	ORDER BY payment_date ASC 
	LIMIT 10;

SELECT 
	title, LENGTH
FROM film
	ORDER BY LENGTH ASC
	LIMIT 5;
	
SELECT 
	COUNT(*) 
FROM film
	WHERE LENGTH <= 50;

-- BETWEEN ----------------------------------------------------------
SELECT * 
FROM payment
	LIMIT 2;

SELECT * 
FROM payment 
	WHERE amount BETWEEN 8 AND 9;

SELECT 
	COUNT(*) 
FROM payment 
	WHERE amount BETWEEN 8 AND 9; 

SELECT 
	COUNT (*) 
FROM payment 
	WHERE amount NOT BETWEEN 8 AND 9;

SELECT * 
FROM payment 
	WHERE payment_date BETWEEN '2007-02-01' AND '2007-02-15';

SELECT * 
 FROM payment
	WHERE payment_date BETWEEN '2007-02-01' AND '2007-02-14'

-- IN ---------------------------------------------------------------
SELECT * 
FROM payment 
	WHERE amount IN(0.99, 1.98, 1.99);

SELECT 
	COUNT(*) 
FROM payment 
	WHERE amount IN(0.99, 1.98, 1.99);

SELECT 
	COUNT(*)
FROM payment
	WHERE amount NOT IN(0.99, 1.98, 1.99);

SELECT * 
FROM customer 
	WHERE first_name IN('John', 'Jake', 'Julie');

SELECT * 
FROM customer
	WHERE first_name NOT IN('John', 'Jake', 'Julie');

-- LIKE and ILIKE ---------------------------------------------------
SELECT * 
FROM customer
	WHERE first_name LIKE 'J%';

SELECT * 
FROM customer 
	WHERE first_name LIKE 'J%'
	AND last_name LIKE 'S%';

SELECT * 
FROM customer 
	WHERE first_name LIKE 'j%' 
	AND last_name LIKE 's%';

SELECT * 
FROM customer 
	WHERE first_name ILIKE 'j%'
	AND last_name ILIKE 's%';

SELECT * 
FROM customer 
	WHERE first_name LIKE '%er%';

SELECT * 
FROM customer 
	WHERE first_name LIKE '_her%';

SELECT * 
FROM customer 
	WHERE first_name NOT LIKE '_her%';

SELECT * 
FROM customer 
	WHERE first_name LIKE 'A%'
	AND last_name NOT LIKE 'B%'
	ORDER BY last_name;

-- General Challenge 1 ----------------------------------------------
SELECT 
	COUNT(amount)
FROM payment 
	WHERE amount > 5.00;

SELECT 
	COUNT(first_name)
FROM actor
	WHERE first_name LIKE 'P%';

SELECT 
	DISTINCT(COUNT(district))
FROM address;

SELECT 
	COUNT(title)
FROM film
	WHERE rating = 'R'
	AND replacement_cost BETWEEN 5.00 AND 15.00;

SELECT 
	COUNT(title)
FROM film
	WHERE title LIKE '%Truman%';