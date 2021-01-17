# USE employees;
USE codeup_test_db;

# SHOW TABLES;

# 2. Will describe and inspect the keys of each table
# DESCRIBE employees;
# DESCRIBE dept_emp;
# DESCRIBE dept_manager;
# DESCRIBE salaries;
# DESCRIBE titles;
# DESCRIBE departments;


# Provide a unique key for artist and name combination
ALTER TABLE albums
ADD UNIQUE unique_nm_ar (artist,name);

INSERT INTO albums (artist, name, release_date, sales, genre)
VALUES ('Jacob Collier', 'Djesse Vol. 3', '2020', '1.5','RnB');

SHOW TABLES;

DESCRIBE albums;

SELECT * FROM albums;

