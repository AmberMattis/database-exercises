USE codeup_test_db;

SELECT * FROM albums;

# Will return the list of album names with the artist named Pink FLoyd
SELECT ALL name
FROM albums
WHERE artist LIKE '%Pink Floyd%';

# Will return the year the Beatle's Sgt Pepper Lonely Hearts Club was released
SELECT release_date
FROM albums
WHERE name LIKE '%Lonely Hearts CLub%';


# Will return the genre of the album named Nevermind
SELECT genre
FROM albums
WHERE name LIKE '%Nevermind%';


# Will return the name of all the albums released in the 90s
SELECT name, release_date
FROM albums
WHERE release_date BETWEEN '1990' AND '1999';


# Will return all albums that sold less the 20 million
SELECT *
FROM albums
WHERE sales < 20;

# Will return all albums in the Rock genre
SELECT *
FROM albums
WHERE genre LIKE 'ROCK';
