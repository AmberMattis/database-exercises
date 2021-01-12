USE employees;

SELECT first_name, last_name
FROM employees
WHERE first_name IN ('Irena', 'VIdya', 'Maya');

SELECT first_name, last_name
FROM employees
WHERE last_name LIKE'E%';

