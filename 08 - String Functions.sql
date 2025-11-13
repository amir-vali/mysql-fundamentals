-- String Functions

SELECT LENGTH('amir');

SELECT first_name, LENGTH(first_name)
FROM employee_demographics
ORDER BY 2;

SELECT UPPER('amir');
SELECT LOWER('AmIr');

SELECT first_name, UPPER(first_name)
FROM employee_demographics;

SELECT TRIM('             sky            ');
SELECT LTRIM('             sky            ');
SELECT RTRIM('             sky            ');

SELECT first_name,
LEFT(first_name, 4),
RIGHT(first_name, 4),
SUBSTRING(first_name,3,2),
SUBSTRING(birth_date,6,2) AS birth_month
FROM employee_demographics;

SELECT first_name, REPLACE(first_name, 'a', 'z')
FROM employee_demographics;

SELECT LOCATE('e', 'Alexander');

SELECT LOCATE('a', 'banana') AS first_pos,
       LOCATE('a', 'banana', LOCATE('a', 'banana') + 1) AS second_pos,
       LOCATE('a', 'banana', LOCATE('a', 'banana', LOCATE('a', 'banana') + 1) + 1) AS third_pos;

SELECT first_name, LOCATE('An', first_name)
FROM employee_demographics;

SELECT first_name, last_name,
CONCAT(first_name, ' ',last_name) AS full_name
FROM employee_demographics;