USE codeup_test_db;

# Will return all albums under collum title 'All albums in your table
SELECT name AS 'All albums in your table'
FROM albums;

# Will return all albums that were released before 1980
SELECT name AS 'All albums released before 1980'
FROM albums
WHERE release_date < 1980;