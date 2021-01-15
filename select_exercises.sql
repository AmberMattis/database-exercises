USE codeup_test_db;

SELECT * FROM albums;

# Will return the list of album names with the artist named Pink FLoyd
SELECT ALL name
FROM albums
WHERE artist LIKE '%Pink Floyd%';


