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



