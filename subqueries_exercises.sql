USE employees;


# 1 Find all employees with same hire date as emp 101010
SELECT CONCAT(first_name, ' ', last_name) AS full_Name, hire_date
FROM employees
WHERE hire_date IN (
    SELECT hire_date
    FROM employees
    WHERE emp_no LIKE 101010
    );