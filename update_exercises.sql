USE codeup_test_db;

# Will return all albums under collum title 'All albums in your table
SELECT name, sales AS 'All albums in your table'
FROM albums;

SELECT * FROM albums;

UPDATE albums
SET sales = (sales * 10);

SELECT * FROM albums;


# Will return all albums that were released before 1980
SELECT name, release_date AS 'All albums released before 1980'
FROM albums
WHERE release_date < 1980;

UPDATE albums
SET release_date = (release_date - 100);

SELECT * FROM albums;

# Will return all albums that were released by Michael Jackson
SELECT artist, name AS 'Albums by Michael Jackson'
FROM albums
WHERE artist LIKE '%Michael Jackson%';

UPDATE albums
SET artist = 'Peter Jackson';

SELECT * FROM albums;


