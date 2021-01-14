USE employees;

# Return 10 employees in a result set names 'full_name' in lastname firstname format
SELECT CONCAT(last_name, ' ', first_name) AS full_name
FROM employees
LIMIT 10;