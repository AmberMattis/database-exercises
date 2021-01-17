USE employees;


# 1 Find all employees with same hire date as emp 101010
SELECT CONCAT(first_name, ' ', last_name) AS full_Name, hire_date
FROM employees
WHERE hire_date IN (
    SELECT hire_date
    FROM employees
    WHERE emp_no LIKE 101010
    );

# Find all titles held by all employees with the first name Aamod
SELECT title, COUNT(title) AS Count
FROM titles
WHERE emp_no IN (
    SELECT emp_no
    FROM employees
    WHERE first_name LIKE 'Aamod'
)
 GROUP BY title;