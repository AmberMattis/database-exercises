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



# 4. Will display employees currently working in the customer service department
SELECT t.title AS Title, COUNT(*) AS Count
FROM departments AS d
    JOIN dept_emp  AS de
         ON de.dept_no = d.dept_no
    JOIN titles AS t
        ON t.emp_no = de.emp_no
WHERE d.dept_name = 'Customer Service'
AND t.to_date > NOW()
GROUP BY t.title;

# 5. Will display salaries of all current managers
SELECT d.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS 'Manager', s.salary
FROM salaries AS s
     JOIN dept_manager AS m
          ON m.emp_no = s.emp_no
     JOIN employees AS e
          ON e.emp_no = m.emp_no
     JOIN departments AS d
          ON d.dept_no = m.dept_no
WHERE m.to_date > NOW()
  AND s.to_date > NOW()
ORDER BY d.dept_name;



