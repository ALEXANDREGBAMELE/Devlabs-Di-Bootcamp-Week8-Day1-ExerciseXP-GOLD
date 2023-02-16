--@author: Alexandre GBAMELE
 CREATE TABLE students(std_id SERIAL PRIMARY KEY,
 					  last_name VARCHAR(150) NOT NULL,
					 first_name VARCHAR(255) NOT NULL,
 					  birth_date DATE
 					 );
 INSERT INTO students(last_name,first_name,birth_date) VALUES
 ('Marc',	'Benichou'	,'11/02/1998'),
 ('Yoan',	'Cohen',	'12/03/2010'),
 ('Lea',	'Benichou',	'07/27/1987'),
 ('Amelia',	'Dux',	'04/07/1996'),
 ('David',	'Grez',	'06/14/2003'),
 ('Omer'	,'Simpson',	'10/03/1980');

--1 Fetch the first four students.
SELECT * FROM students LIMIT 4;
-- You have to order the four students alphabetically by last_name.
SELECT * FROM students  ORDER BY last_name ASC LIMIT 4;
--2 Fetch the details of the youngest student.
SELECT MIN(birth_date)  AS SmallestBirth_dat FROM students;
--3 Fetch three students skipping the first two students.
SELECT * FROM students WHERE std_id > 2;