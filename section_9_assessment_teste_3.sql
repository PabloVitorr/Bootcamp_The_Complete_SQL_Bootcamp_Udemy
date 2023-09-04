-- Assessment Test 3 ------------------------------------------------
CREATE TABLE teachers(
	teacher_id SERIAL PRIMARY KEY, 
	first_name VARCHAR(50), 
	last_name VARCHAR(50), 
	homeromm_number INTEGER,
	departament VARCHAR(100),
	email VARCHAR(100) UNIQUE, 
	phone VARCHAR(14) UNIQUE 
);

CREATE TABLE students(
	student_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50),
	last_name VARCHAR(50), 
	homerrom_number INTEGER, 
	phone VARCHAR(14) UNIQUE, 
	email VARCHAR(100) UNIQUE, 
	graduation_year INTEGER
);

INSERT INTO students(
	first_name, 
	last_name, 
	phone, 
	graduation_year, 
	homerrom_number)
VALUES (
	'Mark', 
	'Watney', 
	'777-555-1234', 
	'2035',
	5
);

INSERT INTO teachers(
	first_name, 
	last_name, 
	homeroom_number, 
	departament, 
	email, 
	phone)
VALUES (
	'Jonas', 
	'Salk', 
	5, 
	'Biologia', 
	'jsalk@school.org', 
	'777-555-4321');
