USE employees;

# 2. Will display each department and the current manager of that department
SELECT CONCAT(e.first_name, ' ', e.last_name) AS DEPARTMENT_MANAGER, d.dept_name AS DEPARTMENT_NAME
FROM employees as e
         JOIN dept_manager as dm
              ON dm.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01'
ORDER BY dept_name;



# 3. Will display all departments currently managed by women
SELECT CONCAT(e.first_name, ' ', e.last_name) AS MANAGER_NAME, d.dept_name AS DEPARTMENT_NAME, gender
FROM employees as e
    JOIN dept_manager as dm
        ON e.emp_no = dm.emp_no
    JOIN departments as d
        ON dm.dept_no = d.dept_no
WHERE dm.to_date = '9999-01-01' AND gender LIKE ('F')
ORDER BY dept_name;

