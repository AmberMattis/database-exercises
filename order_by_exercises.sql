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

# 7. refactored 90s hires born on Christmas so first result is Khun Bernini oldest employee
SELECT first_name, last_name, hire_date
FROM employees
WHERE  hire_date BETWEEN '1990-01-01' AND '1999-12-31'
  AND birth_date LIKE '%12-25'
ORDER BY hire_date DESC;


