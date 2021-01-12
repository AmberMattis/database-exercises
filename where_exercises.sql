USE employees;

SELECT first_name, last_name
FROM employees
WHERE first_name IN ('Irena', 'VIdya', 'Maya');

# Refactored using Or instead of IN
SELECT first_name, last_name
FROM employees
WHERE first_name = 'Irena' OR first_name = 'Maya' OR first_name = 'Vidya';



SELECT first_name, last_name
FROM employees
WHERE last_name LIKE'E%';

SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date LIKE '199%';

SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date LIKE '%12-25';

SELECT first_name, last_name
FROM employees
WHERE last_name LIKE '%q%';