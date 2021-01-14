USE employees;

# used distinct to find all the distinct job titles in the titles tables
SELECT DISTINCT title
FROM titles
GROUP BY title;


