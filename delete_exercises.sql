USE codeup_test_db;

# Will display all albums released after 1991
SELECT * FROM albums
WHERE release_date > 1991;



# Will display all albums in the disco genre
SELECT * FROM albums
WHERE genre LIKE 'disco';



# Will display all albums by Whitney Houston
SELECT * FROM albums
WHERE artist LIKE '%Whitney Houston%';


