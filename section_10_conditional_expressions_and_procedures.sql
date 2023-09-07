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

-- CASE Challenge Task ----------------------------------------------
SELECT * 
FROM film
-- R  PG  PG-13

SELECT 
SUM(CASE rating 
	WHEN 'R' THEN 1
   	ELSE 0
END) AS r,
SUM(CASE rating 
   WHEN 'PG' THEN 1
   ELSE 0
END) AS pg,
SUM(CASE rating 
   WHEN 'PG-13' THEN 1
   ELSE 0
END) AS pg13s
FROM film;

-- COALESCE ---------------------------------------------------------
-- Example
/*
SELECT 
	item,
	(price - COALESCE(discount, 0)) AS final
FROM table;
*/

SELECT 
	address, 
	COALESCE(address2,'Address not yet filled in') 
FROM address;

-- CAST -------------------------------------------------------------
SELECT	CAST('5' AS INTEGER) AS new_int;
SELECT '5'::INTEGER AS new_int;

SELECT 
	CAST(inventory_id AS VARCHAR)
FROM rental;

SELECT 
	CHAR_LENGTH(CAST(inventory_id AS VARCHAR))
FROM rental;

SELECT 
	CHAR_LENGTH(inventory_id::VARCHAR)
FROM rental;

-- NULLIF -----------------------------------------------------------
CREATE TABLE dpts(
	first_name VARCHAR(50),
	department VARCHAR(50)
);

INSERT INTO dpts
	(first_name ,department)
VALUES
	('Vinton', 'A'),
	('Lauren', 'A'), 
	('Claire', 'B');

SELECT * FROM dpts;

SELECT (
SUM(CASE WHEN department = 'A' THEN 1 ELSE 0 END) /
SUM(CASE WHEN department = 'B' THEN 1 ELSE 0 END)
) AS department_ratio 
FROM dpts;

DELETE 
FROM dpts
	WHERE department = 'B';

SELECT * FROM dpts;

SELECT (
SUM(CASE WHEN department = 'A' THEN 1 ELSE 0 END) /
SUM(CASE WHEN department = 'B' THEN 1 ELSE 0 END)
) AS department_ratio 
FROM dpts;

SELECT (
SUM(CASE WHEN department = 'A' THEN 1 ELSE 0 END) /
NULLIF(SUM(CASE WHEN department = 'B' THEN 1 ELSE 0 END), 0)
) AS department_ratio 
FROM dpts;

-- Views ------------------------------------------------------------
CREATE VIEW customer_info AS 
SELECT 
	first_name, 
	last_name, 
	address 
FROM customer 
	JOIN address ON customer.address_id = address.address_id;

SELECT * 
FROM customer_info;

CREATE OR REPLACE VIEW customer_info AS 
SELECT 
	first_name, 
	last_name, 
	address, 
	district 
FROM customer 
	JOIN address ON customer.address_id = address.address_id; 

SELECT * 
FROM customer_info;

DROP VIEW IF EXISTS customer_info

ALTER VIEW customer_info RENAME TO c_info;

-- Import and Export ------------------------------------------------
CREATE TABLE simple(
	a INTEGER,
	b INTEGER,
	c INTEGER
);

SELECT * 
FROM simple;

COPY simple 
FROM '/home/pablo/Desktop/Temp/simple.csv' WITH DELIMITER ',' CSV HEADER;