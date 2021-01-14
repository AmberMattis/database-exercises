USE employees;

# 2 used distinct to find all the distinct job titles in the titles tables
SELECT DISTINCT title
FROM titles
GROUP BY title;


# 3 refactored code for last names that start and end with 'e' to display only the unique last names
SELECT last_name
FROM employees
WHERE last_name LIKE '%E'
  AND last_name LIKE 'E%'
GROUP BY last_name;