-- Advanced SQL Commands --------------------------------------------
-- Tiemestamps and Extract Part One ---------------------------------
SHOW ALL;
SHOW TIMEZONE;

SELECT NOW();
SELECT TIMEOFDAY();
SELECT CURRENT_TIME;
SELECT CURRENT_DATE;

-- Timestamps and Extract Part Two ----------------------------------
SELECT * FROM payment;

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