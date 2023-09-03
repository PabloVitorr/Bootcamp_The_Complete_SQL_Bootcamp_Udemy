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
SELECT * 
FROM film;

SELECT * 
FROM inventory;

SELECT 
	film.film_id, 
	film.title, 
	inventory.inventory_id,
	inventory.store_id
FROM film 
	LEFT JOIN inventory ON inventory.film_id = film.film_id
	WHERE inventory.film_id IS NULL;

-- RIGHT JOINS ------------------------------------------------------
SELECT 
	film.film_id, 
	film.title,
	inventory.inventory_id,
	inventory.store_id
FROM film
	RIGHT JOIN inventory ON inventory.film_id = film.film_id
	WHERE film.film_id IS NULL;

-- JOIN Challege ----------------------------------------------------
SELECT * 
FROM customer;

SELECT * 
FROM address;

SELECT 
	address.district,
	customer.email
FROM customer 
	JOIN address ON customer.address_id = address.address_id
	WHERE address.district = 'California';

SELECT * 
FROM film;

SELECT * 
FROM actor;

SELECT * 
FROM film_actor;

SELECT 
	film.title,
	actor.first_name,
	actor.last_name
FROM film_actor 
	JOIN actor ON film_actor.actor_id = actor.actor_id
	JOIN film ON film_actor.film_id = film.film_id
	WHERE actor.first_name = 'Nick'
	AND actor.last_name = 'Wahlberg';