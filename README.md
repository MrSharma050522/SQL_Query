# SQL_Query
# Query to Create Database 
# CREATE DATABASE test; 

# Query ot Delete Databsase
# DROP DATABASE test;

# CREATE DATABASE record_company;

# Query to select Database on which query are supposed to run
# USE record_company;

# Query to create table inside database and specify what column exactly you need and it's datatype
# CREATE TABLE test (	test_column INT );

# Query to alter the table properties 
# ALTER TABLE test ADD another_column VARCHAR(255);

# Query to Delete a table
# CREATE TABLE another_test_table (test_column VARCHAR(255) );
# DROP TABLE another_test_table;

# Adding a Column which should not contain NULL values and giving unique identifier which will identify 
# different rows have the same name
# CREATE TABLE bands ( id INT NOT NULL AUTO_INCREMENT, name VARCHAR(255) NOT NULL, PRIMARY KEY (id) );

# Creating a new table albums and refering it to the bands table 
/*
CREATE TABLE albums (
	id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL, 
    release_year INT,
    band_id INT NOT NULL, 
	PRIMARY KEY (id),
    FOREIGN KEY (band_id) REFERENCES bands(id)
);
*/

# Query to Insert data in database
# INSERT INTO bands (name) VALUES ('SK');
# INSERT INTO bands (name) VALUES ('BTS'), ('HIP-HOP'), ('MJ'), ('START-7');

# Query to Select Data from table
# SELECT * FROM bands;

# Query to Limit Selected Data
# SELECT * FROM bands LIMIT 3; 

# Quey to Select a particular column
# SELECT name FROM bands LIMIT 2 ;

# Query to select column as renamed name 
# SELECT id AS 'ID', name AS 'Band Name' FROM bands;

# Query to get the column sorted 
# SELECT * FROM bands ORDER BY name;
# SELECT * FROM bands ORDER BY name ASC;
# SELECT name AS 'Band Name' FROM bands ORDER BY name DESC;
# INSERT INTO bands (name) VALUES ('AQUA'), ('BETA') , ('GAMMA');

/*
INSERT INTO albums (name, release_year, band_id) 
VALUES ('Jab tak hai jaan', 1999, 2), 
	('Hum tum', 2019, 1), 
    ('Hawayein', 2014, 4),
    ('Veera', 2015, 1),
    ('Pal Pal', 2024, 6),
    ('Chhota sa ghar', 2017, 3);
*/
# INSERT INTO albums (name, release_year, band_id) VALUES ('Test albums', NULL, 2);

# SELECT * FROM albums ORDER BY name;
# SELECT * FROM albums ORDER BY id;
# SELECT * FROM albums ORDER BY release_year;
# SELECT * FROM albums ORDER BY band_id;
# SELECT DISTINCT name FROM albums;

# Query to Update 
# UPDATE albums SET release_year = 2038 WHERE id = 8;

# Query to get some selected data
# SELECT * FROM albums WHERE release_year < 2000;
# SELECT * FROM albums WHERE name LIKE '%er%'; # Where any part of name contains this string
# SELECT * FROM albums WHERE name LIKE '%er%' OR band_id = 4; # Where any part of name contains this string or the other condition
# SELECT * FROM albums WHERE release_year = 2014 AND band_id = 4;
# SELECT * FROM albums WHERE release_year BETWEEN 2000 AND 2032; 
# SELECT * FROM albums WHERE release_year IS NULL;
# DELETE FROM albums WHERE id = 7;
# SELECT * FROM albums ;
# INSERT INTO albums (name, release_year, band_id) VALUES ('Test Albums2', null, 3);

# Query to join tables 
# SELECT * FROM bands JOIN albums ON bands.id = albums.band_id;
# SELECT * FROM bands JOIN albums ON albums.band_id = bands.id;
# SELECT * FROM bands INNER JOIN albums ON bands.id = albums.band_id;
# SELECT * FROM bands LEFT JOIN albums ON bands.id = albums.band_id;
# SELECT * FROM bands RIGHT JOIN albums ON bands.id = albums.band_id;
# SELECT * FROM albums RIGHT JOIN bands ON bands.id = albums.band_id;
# SELECT * FROM albums LEFT JOIN bands ON bands.id = albums.band_id;


# Query to Aggregation function
# SELECT AVG(release_year) FROM albums;
# SELECT COUNT(release_year) FROM albums;
# SELECT SUM(release_year) FROM albums;
# SELECT COUNT(name) FROM albums;
# SELECT band_id, COUNT(band_id) FROM albums GROUP BY band_id;
# SELECT b.id AS sl_no, b.name AS band_name, COUNT(a.id) AS num_albums FROM bands AS b LEFT JOIN albums AS a ON a.band_id = b.id GROUP BY b.id;
# SELECT b.id AS sl_no, b.name AS band_name, COUNT(a.id) AS num_albums FROM bands AS b LEFT JOIN albums AS a ON a.band_id = b.id GROUP BY b.id HAVING num_albums = 0;





