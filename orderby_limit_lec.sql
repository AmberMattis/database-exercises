USE employees;

SELECT first_name, last_name
FROM employees
ORDER BY last_name;

SELECT  * FROM employees;

# orders employees by birthday in ascending order
SELECT  first_name, last_name, birth_date
FROM employees
ORDER BY birth_date;

SELECT  first_name, last_name, birth_date
FROM employees
ORDER BY birth_date DESC;


SELECT first_name, last_name
FROM employees
ORDER BY last_name DESC, first_name ASC;

# There is a priroity when ordering by chaining
# chaining. In the code above, last_name is directly after order by
# so it will take precedence over first name, if

DESCRIBE employees;


SELECT  * FROM employees
LIMIT 15 OFFSET 5;



