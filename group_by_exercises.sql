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

# 4 refactored above code to find unique combinations of first and last names
SELECT last_name, first_name
FROM employees
WHERE last_name LIKE '%E'
  AND last_name LIKE 'E%'
GROUP BY last_name, first_name;

# 5. find unique last names with 'q' but not 'qu'
SELECT DISTINCT last_name
FROM employees
WHERE last_name LIKE '%q%'
          AND last_name NOT LIKE '%qu%'
GROUP BY last_name;

# 7. refactored code to display the number of each gender with the names 'Irena', 'Vidya', and 'Maya
SELECT COUNT(gender),gender
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
GROUP BY gender;

