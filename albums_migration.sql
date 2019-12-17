USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums(
    id INT UNSIGNED AUTO_INCREMENT NOT NULL,
    artists VARCHAR(50) DEFAULT 'NONE',
    name VARCHAR(50) NOT NULL,
    release_date INT UNSIGNED NOT NULL,
    sales DOUBLE UNSIGNED,
    genre TEXT,
    PRIMARY KEY(id)
);