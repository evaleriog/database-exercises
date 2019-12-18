USE codeup_test_db;

SELECT 'Albums released after 1991' AS 'Info';
SELECT * FROM albums WHERE release_date > 1991;
DELETE FROM albums WHERE release_date > 1991;

SELECT 'Albums with the genre disco' AS 'Info';
SELECT * FROM albums WHERE genre = 'Disco';
DELETE FROM albums WHERE genre = 'Disco';

SELECT 'Albums by Whitney Houston' AS 'Info';
SELECT * FROM albums WHERE artists = 'Whitney Houston';
DELETE FROM albums WHERE artists = 'Whitney Houston';