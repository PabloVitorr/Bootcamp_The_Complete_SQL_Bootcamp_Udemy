-- SELECT Statement
SELECT * FROM actor;
SELECT first_name FROM actor;
SELECT first_name, last_name FROM actor;
SELECT last_name, first_name FROM actor;
select last_name, first_name from actor;
SELECT last_name, first_name FROM actor

-- Challenge SELECT
SELECT * FROM customer;
SELECT first_name, last_name, email FROM customer;

-- SELECT DISTINCT
SELECT * FROM film;
SELECT DISTINCT(release_year) FROM film;
SELECT DISTINCT(rental_rate) FROM film;

-- Challenge SELECT DISTINCT
SELECT * FROM film;
SELECT DISTINCT(rating) FROM film;

-- COUNT
SELECT * FROM payment;
SELECT COUNT(*) FROM payment;
SELECT COUNT(amount) FROM payment;
SELECT COUNT(DISTINCT(amount)) FROM payment;

-- SELECT WHERE Part Two
SELECT * FROM customer;

SELECT * FROM customer 
WHERE first_name = 'Jared';

SELECT * FROM film;

SELECT * FROM film 
WHERE rental_rate > 4.00;

SELECT * FROM film 
WHERE rental_rate > 4.00 
	AND replacement_cost >= 19.99;

SELECT * FROM film 
WHERE rental_rate > 4.00 
	AND replacement_cost >= 19.99
	AND rating = 'R';

SELECT title FROM film
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

SELECT COUNT(*) FROM film 
WHERE rating = 'R' OR rating = 'PG-13';

SELECT * FROM film 
WHERE rating != 'R';

-- Challenge SELECT WHERE
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
SELECT phone 
FROM address
WHERE address = '259 Ipoh Drive';