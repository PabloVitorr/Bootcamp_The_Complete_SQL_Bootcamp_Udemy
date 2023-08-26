-- SELECT Statement
SELECT * FROM actor;
SELECT first_name FROM actor;
SELECT first_name, last_name FROM actor;
SELECT last_name, first_name FROM actor;
select last_name, first_name from actor;
SELECT last_name, first_name FROM actor

-- SELECT
SELECT * FROM customer;
SELECT first_name, last_name, email FROM customer;

-- SELECT DISTINCT
SELECT * FROM film;
SELECT DISTINCT(release_year) FROM film;
SELECT DISTINCT(rental_rate) FROM film;

SELECT * FROM film;
SELECT DISTINCT(rating) FROM film;

-- COUNT
SELECT * FROM payment;
SELECT COUNT(*) FROM payment;
SELECT COUNT(amount) FROM payment;
SELECT COUNT(DISTINCT(amount)) FROM payment;

-- SELECT WHERE Part One
