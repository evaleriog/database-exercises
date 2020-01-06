USE music_db;

SELECT song_name, artist_name FROM songs WHERE song_name = 'Black Dawn';
SELECT * FROM songs ORDER BY length DESC LIMIT 3;
SELECT COUNT(*) FROM songs;
SELECT artist_name, COUNT(*) FROM songs GROUP BY artist_name ORDER BY COUNT(*) DESC LIMIT 3;
select song_name, album_name, SEC_TO_TIME(length) from songs  order by length desc limit 10;