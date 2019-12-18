USE codeup_test_db;

TRUNCATE albums;

INSERT INTO albums (artists, name, release_date, sales, genre) VALUES
('Michael Jackson', 'Thriller', 1982, 47.3, 'Pop, rock, R&B'),
('AC/DC', 'Back in Black', 1980, 26.4, 'Hard rock'),
('Meat Loaf', 'Bat Out of Hell', 1977, 21.7, 'Hard rock, glam rock, heavy metal'),
('Pink Floyd', 'The Dark Side of the Moon', 1973, 24.2, 'Progressive rock'),
('Whitney Houston', 'The Bodyguard', 1992, 28.4, 'R&B, soul, pop, soundtrack'),
('Eagles', 'Their Greatest Hits (1971 - 1975)', 1976, 41.2, 'Country, rock, soft rock, folk rock'),
('Bee Gees', 'Saturday Night Fever', 1977, 21.6, 'Disco'),
('Fleetwood Mac', 'Rumours', 1977, 27.9, 'Soft rock'),
('Shania Twain', 'Come On Over', 1997, 29.6, 'Country, pop'),
('Led Zeppelin', 'Led Zeppelin IV',1971,29.0, 'Hard rock, heavy metal'),
('Michael Jackson','Bad',1987,22.2,'Pop-funk-rock'),
('Alanis Morissette','Jagged Little Pill',1995,24.4,'Alternative rock'),
('Celine Dion','Falling into You',1996,20.2,'Pop, Soft rock'),
('The Beatles','Sgt. Peppers Lonely Hearts Club Band',1967,18.2,'Rock'),
('Eagles','Hotel California',1976,31.5,'Rock, soft rock, folk rock'),
('Mariah Carey','Music Box',1993,28,'Pop,R&B,Rock'),
('Michael Jackson','Dangerous',1991,17.3,'Rock, Funk, Pop'),
('Various artists','Dirty Dancing',1987,17.9,'Pop, rock, R&B'),
('Celine Dion','Let''s Talk About Love',1997,19.3,'Pop, Soft rock'),
('The Beatles','1',2000,23.4,'Rock'),
('Adele','21',2011,25.3,'Pop, soul'),
('The Beatles','Abbey Road',1969,14.4,'Rock'),
('Bruce Springsteen','Born in the U.S.A.',1984,19.6,'Rock'),
('Dire Straits','Brothers in Arms',1985,17.7,'Rock'),
('James Horner','Titanic: Music from the Motion Picture',1997,18.1,'Soundtrack'),
('Madonna','The Immaculate Collection',1990,19.4,'Pop, Dance'),
('Metallica','Metallica',1991,25.2,'Thrash metal, heavy metal'),
('Nirvana','Nevermind',1991,16.7,'Grunge, alternative rock'),
('Pink Floyd','The Wall',1979,18.7,'Progressive rock'),
('Santana','Supernatural',1999,20.5,'Rock'),
('Guns N Roses','Appetite for Destruction',1987,21.9,'Heavy metal, hard rock')
;