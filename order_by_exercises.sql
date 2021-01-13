USE employees;

# 2. refactor to order by first name  first "IRENE REUTENAUER" last "VIDYA SIMMEN"
SELECT first_name, last_name
FROM employees
WHERE first_name IN ('Irena','Vidya','Maya')
ORDER BY first_name;

# 3. refactored to order by first name first
SELECT first_name, last_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name, last_name;

# 4. refactored to order by last name first
SELECT first_name, last_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY last_name, first_name;



# Refactored using Or instead of IN
SELECT first_name, last_name, gender
FROM employees
WHERE gender = 'M'
  AND (first_name LIKE 'Irena'
    OR first_name LIKE 'Maya'
    OR first_name LIKE 'Vidya');


# Find employees with last names that contain an 'e'
SELECT first_name, last_name
FROM employees
WHERE last_name LIKE'E%';

# Find all employees hire in the 90s.
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date LIKE '199%';

# Find all employees hired on Christmas
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date LIKE '%12-25';

# Find all employees with a last name tha contains a 'q'.
SELECT first_name, last_name
FROM employees
WHERE last_name LIKE '%q%';

# Find all employees with a last name that starts and ends with 'e'.
SELECT first_name, last_name
FROM employees
WHERE last_name LIKE '%E'
   OR last_name LIKE 'E%';

# Refactored to find all employees with last names that start and end with E
SELECT first_name, last_name
FROM employees
WHERE last_name LIKE '%E'
  AND last_name LIKE 'E%';

# Find all employees born Christmas and hired in the 90s
SELECT first_name, last_name, hire_date
FROM employees
WHERE  hire_date LIKE '199%'
  AND hire_date LIKE '%12-25';

# Find all employees with 'q' but not 'qu' in last name
SELECT first_name, last_name
FROM employees
WHERE last_name NOT LIKE '%qu%'
  AND last_name LIKE '%q%';