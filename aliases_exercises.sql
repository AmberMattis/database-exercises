USE employees;

# 3. Return 10 employees in a result set names 'full_name' in lastname firstname format
SELECT CONCAT(last_name, ' ', first_name) AS full_name
FROM employees
LIMIT 10;

# 4. Add dob for each employee to above code and display under DOB collunm
SELECT CONCAT(last_name, ' ', first_name) AS full_name, CONCAT(birth_date) AS DOB
FROM employees
LIMIT 10;

# 5. update above code to format full name collum to include the employee number
SELECT CONCAT(emp_no,' - ', last_name, first_name) AS full_name, CONCAT(birth_date) AS DOB
FROM employees
LIMIT 10;