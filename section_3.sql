-- GROUP BY ---------------------------------------------------------
-- Aggregation Functions --------------------------------------------
SELECT * FROM film;
SELECT MIN(replacement_cost) FROM film;
SELECT MAX(replacement_cost) FROM film;

SELECT MAX(replacement_cost), title FROM film;

SELECT 
	MAX(replacement_cost), 
	MIN(replacement_cost) 
FROM film;

SELECT COUNT(*)
FROM film;

SELECT AVG(replacement_cost)::NUMERIC(12,4) 
FROM film;

SELECT ROUND(AVG(replacement_cost),4) 
FROM film;

SELECT 
	SUM(replacement_cost)
FROM film;