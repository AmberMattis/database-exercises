USE codeup_test_db;

# # Will display all albums released after 1991
# SELECT * FROM albums
# WHERE release_date > 1991;
#
#
#
# # Will display all albums in the disco genre
# SELECT * FROM albums
# WHERE genre LIKE 'disco';
#
#
#
# # Will display all albums by Whitney Houston
# SELECT * FROM albums
# WHERE artist LIKE '%Whitney Houston%';



# Will Delete all albums released after 1991
DELETE FROM albums
WHERE release_date > 1991;

SELECT release_date FROM albums;



# Will delete all albums in the disco genre
DELETE FROM albums
WHERE genre LIKE 'disco';

SELECT * FROM albums
WHERE genre LIKE 'disco';



# Will delete all albums by Whitney Houston
DELETE FROM albums
WHERE artist LIKE '%Whitney Houston%';

SELECT * FROM albums
WHERE artist  LIKE '%Whitney Houston%';