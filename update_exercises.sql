USE codeup_test_db;

SELECT * FROM albums;
UPDATE albums SET sales = sales * 10;
SELECT * FROM albums;

SELECT * FROM albums WHERE release_date < 1980;
UPDATE albums SET release_date = release_date - 100 WHERE release_date < 1980;
SELECT * FROM albums WHERE release_date < 1980;

SELECT * FROM albums WHERE artists = 'Michael Jackson';
UPDATE albums SET artists = 'Peter Jackson' WHERE artists = 'Michael Jackson';
SELECT * FROM albums WHERE artists = 'Peter Jackson';