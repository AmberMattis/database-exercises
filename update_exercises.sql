USE codeup_test_db;

# Will return all albums under collum title 'All albums in your table
SELECT name, sales AS 'All albums in your table'
FROM albums;

SELECT * FROM albums;




# Will make all albums 10 time more popular
UPDATE albums
SET sales = (sales * 10);

SELECT * FROM albums;




# Will return all albums that were released before 1980
SELECT name, release_date AS 'All albums released before 1980'
FROM albums
WHERE release_date < 1980;




# Will set all albums before 1980 to the 1800s
UPDATE albums
SET release_date = (release_date - 100)
WHERE release_date < 1980;

SELECT * FROM albums
WHERE release_date < 1980;




# Will return all albums that were released by Michael Jackson
SELECT artist, name AS 'Albums by Michael Jackson'
FROM albums
WHERE artist LIKE '%Michael Jackson%';




# Will change all michael jackson albums to peter jackson as the artist
UPDATE albums
SET artist = 'Peter Jackson'
WHERE  artist LIKE '%Michael Jackson%';

SELECT * FROM albums
WHERE  artist LIKE  '%Peter Jackson%';


