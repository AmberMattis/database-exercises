USE employees;

SELECT CONCAT(first_name,' ',last_name)
FROM employees;

SELECT CONCAT(first_name,' ',last_name) AS 'All employees'
FROM employees;


SELECT first_name, last_name
FROM employees
WHERE last_name LIKE 'a%a'
LIMIT 10;



# DATE TIME FUNCTIONS


# RETURNS RESULT IN DATE TIME FORMAT
SELECT NOW();

# RETURNS RESULT JUST AS A DATE
SELECT CURDATE();

# RETURN THE RESULT AS TIME
SELECT CURTIME();

# UNIV TIMESTAMP
# RETURN THE TIME AS AN INTEGER
# CAN USE TO RETURN A TIMESTAMP THAT WORKS NO MATTER WHAT TIMEZOME SOMEONE IS IN

# RETURN THE NUMBER OF SECONDS SINCE 1-1-1970
SELECT UNIX_TIMESTAMP();

SELECT CONCAT(
               'LEARNING HOW TO CODE FOR ',
               UNIX_TIMESTAMP() - UNIX_TIMESTAMP('2020-09-21'),
               ' SECONDS'
           );