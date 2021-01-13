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

# 5. refactored to order all employees with 'e' in their last name by emplyee number
SELECT first_name, last_name, emp_no
FROM employees
WHERE last_name LIKE'%E%'
ORDER BY emp_no;

# 6. refactored to reverse the order of employees by employee number amd last name
SELECT first_name, last_name, emp_no
FROM employees
WHERE last_name LIKE'%E%'
ORDER BY emp_no DESC, last_name DESC;

# 7. refactored Christmas hires born in the 90s so first result is Khun Bernini oldest employee
SELECT first_name, last_name, hire_date
FROM employees
WHERE  hire_date BETWEEN '1990-01-01' AND '1999-12-31'
  AND birth_date LIKE '%12-25'
ORDER BY hire_date DESC;


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
WHERE  hire_date BETWEEN '1990-01-01' AND '1999-12-31'
    AND birth_date LIKE '%12-25';



# Find all employees with 'q' but not 'qu' in last name
SELECT first_name, last_name
FROM employees
WHERE last_name NOT LIKE '%qu%'
  AND last_name LIKE '%q%';