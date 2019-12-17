USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums(
    id INT UNSIGNED AUTO_INCREMENT,
    artists VARCHAR(50),
    name VARCHAR(50),
    release_date INT,
    sales DOUBLE,
    genre VARCHAR(50),
    PRIMARY KEY(id)
);