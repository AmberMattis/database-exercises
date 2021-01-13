USE employees;

# 2. Listed 10 Unique last names in descending order
SELECT DISTINCT last_name
FROM employees
ORDER BY last_name DESC
LIMIT 10;

# 3. Refactor 90s hires born on Christmas code to only display the first five
SELECT first_name, last_name, hire_date, birth_date
FROM employees
WHERE  hire_date BETWEEN '1990-01-01' AND '1999-12-31'
  AND birth_date LIKE '%12-25'
ORDER BY  birth_date, hire_date DESC
LIMIT 5;

