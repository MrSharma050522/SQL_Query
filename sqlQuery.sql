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





-- ---------------------------------------------------------------------------------------------------------------------------









# USE quotationTool;
# CREATE TABLE bands (
#   id INT NOT NULL AUTO_INCREMENT,
#   name VARCHAR(255) NOT NULL,
#   PRIMARY KEY (id)
# );

# CREATE TABLE albums (
#   id INT NOT NULL AUTO_INCREMENT,
#   name VARCHAR(255) NOT NULL,
#   release_year INT,
#   band_id INT NOT NULL,
#   PRIMARY KEY (id),
#   FOREIGN KEY (band_id) REFERENCES bands(id)
# );

# Q.1 
# CREATE TABLE songs (
# 	id INT NOT NULL AUTO_INCREMENT, 
#     name VARCHAR(255) NOT NULL, 
#     length FLOAT NOT NULL, 
#     album_id INT NOT NULL, 
#     PRIMARY KEY (id), 
#     FOREIGN KEY (album_id) REFERENCES albums(id) 
# );

/*
INSERT INTO bands(id,name) VALUES (1,'Seventh Wonder');
INSERT INTO bands(id,name) VALUES (2,'Metallica');
INSERT INTO bands(id,name) VALUES (3,'The Ocean');
INSERT INTO bands(id,name) VALUES (4,'Within Temptation');
INSERT INTO bands(id,name) VALUES (5,'Death');
INSERT INTO bands(id,name) VALUES (6,'Van Canto');
INSERT INTO bands(id,name) VALUES (7,'Dream Theater');
*/

# SELECT * FROM bands;

/*
INSERT INTO albums(id,name,release_year,band_id) VALUES (1,'Tiara',2018,1);
INSERT INTO albums(id,name,release_year,band_id) VALUES (2,'The Great Escape',2010,1);
INSERT INTO albums(id,name,release_year,band_id) VALUES (3,'Mercy Falls',2008,1);
INSERT INTO albums(id,name,release_year,band_id) VALUES (4,'Master of Puppets',NULL,2);
INSERT INTO albums(id,name,release_year,band_id) VALUES (5,'...And Justice for All',1988,2);
INSERT INTO albums(id,name,release_year,band_id) VALUES (6,'Death Magnetic',2008,2);
INSERT INTO albums(id,name,release_year,band_id) VALUES (7,'Heliocentric',2010,3);
INSERT INTO albums(id,name,release_year,band_id) VALUES (8,'Pelagial',2013,3);
INSERT INTO albums(id,name,release_year,band_id) VALUES (9,'Anthropocentric',2010,3);
INSERT INTO albums(id,name,release_year,band_id) VALUES (10,'Resist',2018,4);
INSERT INTO albums(id,name,release_year,band_id) VALUES (11,'The Unforgiving',2011,4);
INSERT INTO albums(id,name,release_year,band_id) VALUES (12,'Enter',1997,4);
INSERT INTO albums(id,name,release_year,band_id) VALUES (13,'The Sound of Perseverance',1998,5);
INSERT INTO albums(id,name,release_year,band_id) VALUES (14,'Individual Thought Patterns',1993,5);
INSERT INTO albums(id,name,release_year,band_id) VALUES (15,'Human',1991,5);
INSERT INTO albums(id,name,release_year,band_id) VALUES (16,'A Storm to Come',2006,6);
INSERT INTO albums(id,name,release_year,band_id) VALUES (17,'Break the Silence',2011,6);
INSERT INTO albums(id,name,release_year,band_id) VALUES (18,'Tribe of Force',2010,6);
*/
	
# SELECT * FROM albums;

/*
INSERT INTO songs(id,name,length,album_id) VALUES (1,'Arrival',1+(30/60),1);
INSERT INTO songs(id,name,length,album_id) VALUES (2,'The Everones',6+(13/60),1);
INSERT INTO songs(id,name,length,album_id) VALUES (3,'Dream Machines',5+(38/60),1);
INSERT INTO songs(id,name,length,album_id) VALUES (4,'Against the Grain',6+(58/60),1);
INSERT INTO songs(id,name,length,album_id) VALUES (5,'Victorious',4+(55/60),1);
INSERT INTO songs(id,name,length,album_id) VALUES (6,'Tiara''s Song (Farewell Pt. 1)',7+(16/60),1);
INSERT INTO songs(id,name,length,album_id) VALUES (7,'Goodnight (Farewell Pt. 2)',7+(10/60),1);
INSERT INTO songs(id,name,length,album_id) VALUES (8,'Beyond Today (Farewell Pt. 3)',5+(06/60),1);
INSERT INTO songs(id,name,length,album_id) VALUES (9,'The Truth',4+(17/60),1);
INSERT INTO songs(id,name,length,album_id) VALUES (10,'By the Light of the Funeral Pyres',3+(54/60),1);
INSERT INTO songs(id,name,length,album_id) VALUES (11,'Damnation Below',6+(44/60),1);
INSERT INTO songs(id,name,length,album_id) VALUES (12,'Procession',0+(45/60),1);
INSERT INTO songs(id,name,length,album_id) VALUES (13,'Exhale',9+(30/60),1);
INSERT INTO songs(id,name,length,album_id) VALUES (14,'Wiseman',5+(42/60),2);
INSERT INTO songs(id,name,length,album_id) VALUES (15,'Alley Cat',6+(06/60),2);
INSERT INTO songs(id,name,length,album_id) VALUES (16,'The Angelmaker',8+(29/60),2);
INSERT INTO songs(id,name,length,album_id) VALUES (17,'King of Whitewater',7+(20/60),2);
INSERT INTO songs(id,name,length,album_id) VALUES (18,'Long Way Home',4+(26/60),2);
INSERT INTO songs(id,name,length,album_id) VALUES (19,'Move on Through',5+(04/60),2);
INSERT INTO songs(id,name,length,album_id) VALUES (20,'The Great Escape',30+(14/60),2);
INSERT INTO songs(id,name,length,album_id) VALUES (21,'A New Beginning',3+(05/60),3);
INSERT INTO songs(id,name,length,album_id) VALUES (22,'There and Back',3+(02/60),3);
INSERT INTO songs(id,name,length,album_id) VALUES (23,'Welcome to Mercy Falls',5+(11/60),3);
INSERT INTO songs(id,name,length,album_id) VALUES (24,'Unbreakable',7+(19/60),3);
INSERT INTO songs(id,name,length,album_id) VALUES (25,'Tears for a Father',1+(58/60),3);
INSERT INTO songs(id,name,length,album_id) VALUES (26,'A Day Away',3+(43/60),3);
INSERT INTO songs(id,name,length,album_id) VALUES (27,'Tears for a Son',1+(42/60),3);
INSERT INTO songs(id,name,length,album_id) VALUES (28,'Paradise',5+(46/60),3);
INSERT INTO songs(id,name,length,album_id) VALUES (29,'Fall in Line',6+(09/60),3);
INSERT INTO songs(id,name,length,album_id) VALUES (30,'Break the Silence',9+(29/60),3);
INSERT INTO songs(id,name,length,album_id) VALUES (31,'Hide and Seek',7+(46/60),3);
INSERT INTO songs(id,name,length,album_id) VALUES (32,'Destiny Calls',6+(18/60),3);
INSERT INTO songs(id,name,length,album_id) VALUES (33,'One Last Goodbye',4+(21/60),3);
INSERT INTO songs(id,name,length,album_id) VALUES (34,'Back in Time',1+(14/60),3);
INSERT INTO songs(id,name,length,album_id) VALUES (35,'The Black Parade',6+(57/60),3);
INSERT INTO songs(id,name,length,album_id) VALUES (36,'Battery',5+(13/60),4);
INSERT INTO songs(id,name,length,album_id) VALUES (37,'Master of Puppets',8+(35/60),4);
INSERT INTO songs(id,name,length,album_id) VALUES (38,'The Thing That Should Not Be',6+(36/60),4);
INSERT INTO songs(id,name,length,album_id) VALUES (39,'Welcome Home (Sanitarium)',6+(27/60),4);
INSERT INTO songs(id,name,length,album_id) VALUES (40,'Disposable Heroes',8+(17/60),4);
INSERT INTO songs(id,name,length,album_id) VALUES (41,'Leper Messiah',5+(40/60),4);
INSERT INTO songs(id,name,length,album_id) VALUES (42,'Orion',8+(27/60),4);
INSERT INTO songs(id,name,length,album_id) VALUES (43,'Damage Inc.',5+(32/60),4);
INSERT INTO songs(id,name,length,album_id) VALUES (44,'Blackened',6+(41/60),5);
INSERT INTO songs(id,name,length,album_id) VALUES (45,'...And Justice for All',9+(47/60),5);
INSERT INTO songs(id,name,length,album_id) VALUES (46,'Eye of the Beholder',6+(30/60),5);
INSERT INTO songs(id,name,length,album_id) VALUES (47,'One',7+(27/60),5);
INSERT INTO songs(id,name,length,album_id) VALUES (48,'The Shortest Straw',6+(36/60),5);
INSERT INTO songs(id,name,length,album_id) VALUES (49,'Harvester of Sorrow',5+(46/60),5);
INSERT INTO songs(id,name,length,album_id) VALUES (50,'The Frayed Ends of Sanity',7+(44/60),5);
INSERT INTO songs(id,name,length,album_id) VALUES (51,'To Live Is to Die',9+(49/60),5);
INSERT INTO songs(id,name,length,album_id) VALUES (52,'Dyers Eve',5+(13/60),5);
INSERT INTO songs(id,name,length,album_id) VALUES (53,'That Was Just Your Life',7+(08/60),6);
INSERT INTO songs(id,name,length,album_id) VALUES (54,'The End of the Line',7+(52/60),6);
INSERT INTO songs(id,name,length,album_id) VALUES (55,'Broken Beat & Scarred',6+(25/60),6);
INSERT INTO songs(id,name,length,album_id) VALUES (56,'The Day That Never Comes',7+(56/60),6);
INSERT INTO songs(id,name,length,album_id) VALUES (57,'All Nightmare Long',7+(58/60),6);
INSERT INTO songs(id,name,length,album_id) VALUES (58,'Cyanide',6+(40/60),6);
INSERT INTO songs(id,name,length,album_id) VALUES (59,'The Unforgiven III',7+(47/60),6);
INSERT INTO songs(id,name,length,album_id) VALUES (60,'The Judas Kiss',8+(01/60),6);
INSERT INTO songs(id,name,length,album_id) VALUES (61,'Suicide & Redemption',9+(58/60),6);
INSERT INTO songs(id,name,length,album_id) VALUES (62,'My Apocalypse',5+(01/60),6);
INSERT INTO songs(id,name,length,album_id) VALUES (63,'Shamayim',1+(53/60),7);
INSERT INTO songs(id,name,length,album_id) VALUES (64,'Firmament',7+(29/60),7);
INSERT INTO songs(id,name,length,album_id) VALUES (65,'The First Commandment of the Luminaries',6+(47/60),7);
INSERT INTO songs(id,name,length,album_id) VALUES (66,'Ptolemy Was Wrong',6+(28/60),7);
INSERT INTO songs(id,name,length,album_id) VALUES (67,'Metaphysics of the Hangman',5+(41/60),7);
INSERT INTO songs(id,name,length,album_id) VALUES (68,'Catharsis of a Heretic',2+(08/60),7);
INSERT INTO songs(id,name,length,album_id) VALUES (69,'Swallowed by the Earth',4+(59/60),7);
INSERT INTO songs(id,name,length,album_id) VALUES (70,'Epiphany',3+(37/60),7);
INSERT INTO songs(id,name,length,album_id) VALUES (71,'The Origin of Species',7+(23/60),7);
INSERT INTO songs(id,name,length,album_id) VALUES (72,'The Origin of God',4+(33/60),7);
INSERT INTO songs(id,name,length,album_id) VALUES (73,'Epipelagic',1+(12/60),8);
INSERT INTO songs(id,name,length,album_id) VALUES (74,'Mesopelagic: Into the Uncanny',5+(56/60),8);
INSERT INTO songs(id,name,length,album_id) VALUES (75,'Bathyalpelagic I: Impasses',4+(24/60),8);
INSERT INTO songs(id,name,length,album_id) VALUES (76,'Bathyalpelagic II: The Wish in Dreams',3+(18/60),8);
INSERT INTO songs(id,name,length,album_id) VALUES (77,'Bathyalpelagic III: Disequilibrated',4+(27/60),8);
INSERT INTO songs(id,name,length,album_id) VALUES (78,'Abyssopelagic I: Boundless Vasts',3+(27/60),8);
INSERT INTO songs(id,name,length,album_id) VALUES (79,'Abyssopelagic II: Signals of Anxiety',5+(05/60),8);
INSERT INTO songs(id,name,length,album_id) VALUES (80,'Hadopelagic I: Omen of the Deep',1+(07/60),8);
INSERT INTO songs(id,name,length,album_id) VALUES (81,'Hadopelagic II: Let Them Believe',9+(17/60),8);
INSERT INTO songs(id,name,length,album_id) VALUES (82,'Demersal: Cognitive Dissonance',9+(05/60),8);
INSERT INTO songs(id,name,length,album_id) VALUES (83,'Benthic: The Origin of Our Wishes',5+(55/60),8);
INSERT INTO songs(id,name,length,album_id) VALUES (84,'Anthropocentric',9+(24/60),9);
INSERT INTO songs(id,name,length,album_id) VALUES (85,'The Grand Inquisitor I: Karamazov Baseness',5+(02/60),9);
INSERT INTO songs(id,name,length,album_id) VALUES (86,'She Was the Universe',5+(39/60),9);
INSERT INTO songs(id,name,length,album_id) VALUES (87,'For He That Wavereth...',2+(07/60),9);
INSERT INTO songs(id,name,length,album_id) VALUES (88,'The Grand Inquisitor II: Roots & Locusts',6+(33/60),9);
INSERT INTO songs(id,name,length,album_id) VALUES (89,'The Grand Inquisitor III: A Tiny Grain of Faith',1+(56/60),9);
INSERT INTO songs(id,name,length,album_id) VALUES (90,'Sewers of the Soul',3+(44/60),9);
INSERT INTO songs(id,name,length,album_id) VALUES (91,'Wille zum Untergang',6+(03/60),9);
INSERT INTO songs(id,name,length,album_id) VALUES (92,'Heaven TV',5+(04/60),9);
INSERT INTO songs(id,name,length,album_id) VALUES (93,'The Almightiness Contradiction',4+(34/60),9);
INSERT INTO songs(id,name,length,album_id) VALUES (94,'The Reckoning',4+(11/60),10);
INSERT INTO songs(id,name,length,album_id) VALUES (95,'Endless War',4+(09/60),10);
INSERT INTO songs(id,name,length,album_id) VALUES (96,'Raise Your Banner',5+(34/60),10);
INSERT INTO songs(id,name,length,album_id) VALUES (97,'Supernova',5+(34/60),10);
INSERT INTO songs(id,name,length,album_id) VALUES (98,'Holy Ground',4+(10/60),10);
INSERT INTO songs(id,name,length,album_id) VALUES (99,'In Vain',4+(25/60),10);
INSERT INTO songs(id,name,length,album_id) VALUES (100,'Firelight',4+(46/60),10);
INSERT INTO songs(id,name,length,album_id) VALUES (101,'Mad World',4+(57/60),10);
INSERT INTO songs(id,name,length,album_id) VALUES (102,'Mercy Mirror',3+(49/60),10);
INSERT INTO songs(id,name,length,album_id) VALUES (103,'Trophy Hunter',5+(51/60),10);
INSERT INTO songs(id,name,length,album_id) VALUES (104,'Why Not Me',0+(34/60),11);
INSERT INTO songs(id,name,length,album_id) VALUES (105,'Shot in the Dark',5+(02/60),11);
INSERT INTO songs(id,name,length,album_id) VALUES (106,'In the Middle of the Night',5+(11/60),11);
INSERT INTO songs(id,name,length,album_id) VALUES (107,'Faster',4+(23/60),11);
INSERT INTO songs(id,name,length,album_id) VALUES (108,'Fire and Ice',3+(57/60),11);
INSERT INTO songs(id,name,length,album_id) VALUES (109,'Iron',5+(40/60),11);
INSERT INTO songs(id,name,length,album_id) VALUES (110,'Where Is the Edge',3+(59/60),11);
INSERT INTO songs(id,name,length,album_id) VALUES (111,'Sinéad',4+(23/60),11);
INSERT INTO songs(id,name,length,album_id) VALUES (112,'Lost',5+(14/60),11);
INSERT INTO songs(id,name,length,album_id) VALUES (113,'Murder',4+(16/60),11);
INSERT INTO songs(id,name,length,album_id) VALUES (114,'A Demon''s Fate',5+(30/60),11);
INSERT INTO songs(id,name,length,album_id) VALUES (115,'Stairway to the Skies',5+(32/60),11);
INSERT INTO songs(id,name,length,album_id) VALUES (116,'Restless',6+(08/60),12);
INSERT INTO songs(id,name,length,album_id) VALUES (117,'Enter',7+(15/60),12);
INSERT INTO songs(id,name,length,album_id) VALUES (118,'Pearls of Light',5+(15/60),12);
INSERT INTO songs(id,name,length,album_id) VALUES (119,'Deep Within',4+(30/60),12);
INSERT INTO songs(id,name,length,album_id) VALUES (120,'Gatekeeper',6+(43/60),12);
INSERT INTO songs(id,name,length,album_id) VALUES (121,'Grace',5+(10/60),12);
INSERT INTO songs(id,name,length,album_id) VALUES (122,'Blooded',3+(38/60),12);
INSERT INTO songs(id,name,length,album_id) VALUES (123,'Candles',7+(07/60),12);
INSERT INTO songs(id,name,length,album_id) VALUES (124,'Scavenger of Human Sorrow',6+(56/60),13);
INSERT INTO songs(id,name,length,album_id) VALUES (125,'Bite the Pain',4+(29/60),13);
INSERT INTO songs(id,name,length,album_id) VALUES (126,'Spirit Crusher',6+(47/60),13);
INSERT INTO songs(id,name,length,album_id) VALUES (127,'Story to Tell',6+(34/60),13);
INSERT INTO songs(id,name,length,album_id) VALUES (128,'Flesh and the Power It Holds',8+(26/60),13);
INSERT INTO songs(id,name,length,album_id) VALUES (129,'Voice of the Soul',3+(43/60),13);
INSERT INTO songs(id,name,length,album_id) VALUES (130,'To Forgive Is to Suffer',5+(55/60),13);
INSERT INTO songs(id,name,length,album_id) VALUES (131,'A Moment of Clarity',7+(25/60),13);
INSERT INTO songs(id,name,length,album_id) VALUES (132,'Painkiller',6+(02/60),13);
INSERT INTO songs(id,name,length,album_id) VALUES (133,'Overactive Imagination',3+(30/60),14);
INSERT INTO songs(id,name,length,album_id) VALUES (134,'In Human Form',3+(57/60),14);
INSERT INTO songs(id,name,length,album_id) VALUES (135,'Jealousy',3+(41/60),14);
INSERT INTO songs(id,name,length,album_id) VALUES (136,'Trapped in a Corner',4+(14/60),14);
INSERT INTO songs(id,name,length,album_id) VALUES (137,'Nothing Is Everything',3+(19/60),14);
INSERT INTO songs(id,name,length,album_id) VALUES (138,'Mentally Blind',4+(49/60),14);
INSERT INTO songs(id,name,length,album_id) VALUES (139,'Individual Thought Patterns',4+(01/60),14);
INSERT INTO songs(id,name,length,album_id) VALUES (140,'Destiny',4+(06/60),14);
INSERT INTO songs(id,name,length,album_id) VALUES (141,'Out of Touch',4+(22/60),14);
INSERT INTO songs(id,name,length,album_id) VALUES (142,'The Philosopher',4+(13/60),14);
INSERT INTO songs(id,name,length,album_id) VALUES (143,'Flattening of Emotions',4+(28/60),15);
INSERT INTO songs(id,name,length,album_id) VALUES (144,'Suicide Machine',4+(23/60),15);
INSERT INTO songs(id,name,length,album_id) VALUES (145,'Together as One',4+(10/60),15);
INSERT INTO songs(id,name,length,album_id) VALUES (146,'Secret Face',4+(39/60),15);
INSERT INTO songs(id,name,length,album_id) VALUES (147,'Lack of Comprehension',3+(43/60),15);
INSERT INTO songs(id,name,length,album_id) VALUES (148,'See Through Dreams',4+(39/60),15);
INSERT INTO songs(id,name,length,album_id) VALUES (149,'Cosmic Sea',4+(27/60),15);
INSERT INTO songs(id,name,length,album_id) VALUES (150,'Vacant Planets',3+(52/60),15);
INSERT INTO songs(id,name,length,album_id) VALUES (151,'Stora Rövardansen',1+(33/60),16);
INSERT INTO songs(id,name,length,album_id) VALUES (152,'King',3+(44/60),16);
INSERT INTO songs(id,name,length,album_id) VALUES (153,'The Mission',4+(18/60),16);
INSERT INTO songs(id,name,length,album_id) VALUES (154,'Lifetime',4+(49/60),16);
INSERT INTO songs(id,name,length,album_id) VALUES (155,'Rain',4+(03/60),16);
INSERT INTO songs(id,name,length,album_id) VALUES (156,'She''s Alive',4+(12/60),16);
INSERT INTO songs(id,name,length,album_id) VALUES (157,'I Stand Alone',4+(22/60),16);
INSERT INTO songs(id,name,length,album_id) VALUES (158,'Back in Time',4+(37/60),16);
INSERT INTO songs(id,name,length,album_id) VALUES (159,'Worlds Apart',3+(56/60),16);
INSERT INTO songs(id,name,length,album_id) VALUES (160,'Planet Earth',3+(59/60),16);
INSERT INTO songs(id,name,length,album_id) VALUES (161,'Ice',3+(19/60),16);
INSERT INTO songs(id,name,length,album_id) VALUES (162,'Aftermath',4+(49/60),16);
INSERT INTO songs(id,name,length,album_id) VALUES (163,'Aquarius',6+(58/60),17);
INSERT INTO songs(id,name,length,album_id) VALUES (164,'Let the Light Flood In',3+(52/60),17);
INSERT INTO songs(id,name,length,album_id) VALUES (165,'Sunrise',4+(13/60),17);
INSERT INTO songs(id,name,length,album_id) VALUES (166,'A New Reality',7+(43/60),17);
INSERT INTO songs(id,name,length,album_id) VALUES (167,'Aquatic',6+(42/60),17);
INSERT INTO songs(id,name,length,album_id) VALUES (168,'Exposed',6+(14/60),17);
INSERT INTO songs(id,name,length,album_id) VALUES (169,'Twilight',3+(32/60),17);
INSERT INTO songs(id,name,length,album_id) VALUES (170,'Blackened Eyes',5+(47/60),17);
INSERT INTO songs(id,name,length,album_id) VALUES (171,'Survival',5+(11/60),17);
INSERT INTO songs(id,name,length,album_id) VALUES (172,'Time Stands Still',4+(40/60),17);
INSERT INTO songs(id,name,length,album_id) VALUES (173,'High Tide',5+(35/60),17);
INSERT INTO songs(id,name,length,album_id) VALUES (174,'Heaven',6+(06/60),17);
INSERT INTO songs(id,name,length,album_id) VALUES (175,'Sunset',2+(56/60),17);
INSERT INTO songs(id,name,length,album_id) VALUES (176,'Resurrection Day',8+(49/60),18);
INSERT INTO songs(id,name,length,album_id) VALUES (177,'World on Fire',4+(31/60),18);
INSERT INTO songs(id,name,length,album_id) VALUES (178,'Hold Me Now',3+(59/60),18);
INSERT INTO songs(id,name,length,album_id) VALUES (179,'It Was Love',4+(52/60),18);
INSERT INTO songs(id,name,length,album_id) VALUES (180,'A Story of Love',5+(41/60),18);
INSERT INTO songs(id,name,length,album_id) VALUES (181,'My Own Way',4+(10/60),18);
INSERT INTO songs(id,name,length,album_id) VALUES (182,'Angels',4+(35/60),18);
INSERT INTO songs(id,name,length,album_id) VALUES (183,'Another Night',5+(19/60),18);
INSERT INTO songs(id,name,length,album_id) VALUES (184,'The Ghost of You',4+(33/60),18);
INSERT INTO songs(id,name,length,album_id) VALUES (185,'The Way You Move',4+(40/60),18);
INSERT INTO songs(id,name,length,album_id) VALUES (186,'Think of You',4+(27/60),18);
INSERT INTO songs(id,name,length,album_id) VALUES (187,'Worship',6+(09/60),18);
INSERT INTO songs(id,name,length,album_id) VALUES (188,'Deliver Us',5+(33/60),19);
INSERT INTO songs(id,name,length,album_id) VALUES (189,'Slaves to the Desert',3+(49/60),19);
INSERT INTO songs(id,name,length,album_id) VALUES (190,'Black Flag',4+(08/60),19);
INSERT INTO songs(id,name,length,album_id) VALUES (191,'Infinite War',4+(38/60),19);
INSERT INTO songs(id,name,length,album_id) VALUES (192,'The Warrior',4+(28/60),19);
INSERT INTO songs(id,name,length,album_id) VALUES (193,'Spirit',5+(03/60),19);
INSERT INTO songs(id,name,length,album_id) VALUES (194,'Lost Forever',4+(19/60),19);
INSERT INTO songs(id,name,length,album_id) VALUES (195,'Gods and Tyrants',4+(15/60),19);
INSERT INTO songs(id,name,length,album_id) VALUES (196,'Echoes',6+(16/60),19);
INSERT INTO songs(id,name,length,album_id) VALUES (197,'The Wanderers',6+(28/60),19);
INSERT INTO songs(id,name,length,album_id) VALUES (198,'Overture',5+(53/60),19);
INSERT INTO songs(id,name,length,album_id) VALUES (199,'Requiem',5+(28/60),19);
INSERT INTO songs(id,name,length,album_id) VALUES (200,'Live Another Day',6+(28/60),19);
INSERT INTO songs(id,name,length,album_id) VALUES (201,'The Contract/The Crypts of Hades',4+(55/60),20);
INSERT INTO songs(id,name,length,album_id) VALUES (202,'Masquerade',5+(03/60),20);
INSERT INTO songs(id,name,length,album_id) VALUES (203,'Demons',4+(18/60),20);
INSERT INTO songs(id,name,length,album_id) VALUES (204,'Within the Walls',6+(54/60),20);
INSERT INTO songs(id,name,length,album_id) VALUES (205,'The Beast',3+(29/60),20);
INSERT INTO songs(id,name,length,album_id) VALUES (206,'Collateral Damage',3+(44/60),20);
INSERT INTO songs(id,name,length,album_id) VALUES (207,'Under the Radar',4+(33/60),20);
INSERT INTO songs(id,name,length,album_id) VALUES (208,'Reincarnation',4+(10/60),20);
INSERT INTO songs(id,name,length,album_id) VALUES (209,'Kingdom of the Fearless (The Destruction of Troy)',7+(49/60),20);
INSERT INTO songs(id,name,length,album_id) VALUES (210,'The Mad Arab',4+(43/60),20);
INSERT INTO songs(id,name,length,album_id) VALUES (211,'Gypsy',4+(10/60),20);
INSERT INTO songs(id,name,length,album_id) VALUES (212,'Innocence Lost',4+(30/60),20);
INSERT INTO songs(id,name,length,album_id) VALUES (213,'The Final Sacrifice',5+(00/60),20);
INSERT INTO songs(id,name,length,album_id) VALUES (214,'Minotaur (The Wrath of Poseidon)',6+(26/60),20);
INSERT INTO songs(id,name,length,album_id) VALUES (215,'The Curse of Medea',7+(18/60),20);
INSERT INTO songs(id,name,length,album_id) VALUES (216,'The Hunt',4+(21/60),20);
INSERT INTO songs(id,name,length,album_id) VALUES (217,'Necropolis',6+(19/60),20);
INSERT INTO songs(id,name,length,album_id) VALUES (218,'Cursed',5+(02/60),20);
INSERT INTO songs(id,name,length,album_id) VALUES (219,'Warriors',4+(55/60),20);
INSERT INTO songs(id,name,length,album_id) VALUES (220,'The Premonition',4+(09/60),20);
INSERT INTO songs(id,name,length,album_id) VALUES (221,'Visions',3+(41/60),20);
INSERT INTO songs(id,name,length,album_id) VALUES (222,'The Fires of Ancient Cosmic Destiny',8+(43/60),20);
INSERT INTO songs(id,name,length,album_id) VALUES (223,'The Tides of Time',3+(37/60),20);
INSERT INTO songs(id,name,length,album_id) VALUES (224,'Across the Sea of Time',4+(52/60),20);
INSERT INTO songs(id,name,length,album_id) VALUES (225,'The Tides of War',6+(14/60),20);
INSERT INTO songs(id,name,length,album_id) VALUES (226,'The Tides of Fate',5+(14/60),20);
INSERT INTO songs(id,name,length,album_id) VALUES (227,'The Tides of Blood',4+(37/60),20);
INSERT INTO songs(id,name,length,album_id) VALUES (228,'The Tides of Justice',5+(41/60),20);
INSERT INTO songs(id,name,length,album_id) VALUES (229,'The Tides of Change',4+(34/60),20);
INSERT INTO songs(id,name,length,album_id) VALUES (230,'The Tides of War (Reprise)',1+(25/60),20);
INSERT INTO songs(id,name,length,album_id) VALUES (231,'The End of an Empire',10+(01/60),21);
INSERT INTO songs(id,name,length,album_id) VALUES (232,'Love',6+(37/60),21);
INSERT INTO songs(id,name,length,album_id) VALUES (233,'The Greatest Show on Earth',23+(58/60),21);
INSERT INTO songs(id,name,length,album_id) VALUES (234,'Die for the Devil',4+(12/60),22);
INSERT INTO songs(id,name,length,album_id) VALUES (235,'Zenith of the Black Sun',4+(07/60),22);
INSERT INTO songs(id,name,length,album_id) VALUES (236,'Searching for You',5+(11/60),22);
INSERT INTO songs(id,name,length,album_id) VALUES (237,'Regrets',3+(57/60),22);
INSERT INTO songs(id,name,length,album_id) VALUES (238,'The End of a Universe',6+(00/60),22);
INSERT INTO songs(id,name,length,album_id) VALUES (239,'Sail on',5+(11/60),22);
INSERT INTO songs(id,name,length,album_id) VALUES (240,'One Thousand Years of Darkness',4+(42/60),22);
INSERT INTO songs(id,name,length,album_id) VALUES (241,'Thunder and Hell',3+(50/60),22);
INSERT INTO songs(id,name,length,album_id) VALUES (242,'Forever Free',4+(45/60),22);
INSERT INTO songs(id,name,length,album_id) VALUES (243,'A World on Fire',3+(48/60),22);
INSERT INTO songs(id,name,length,album_id) VALUES (244,'Gods of Metal',3+(39/60),22);
INSERT INTO songs(id,name,length,album_id) VALUES (245,'My Symphony',4+(41/60),22);
INSERT INTO songs(id,name,length,album_id) VALUES (246,'Bringing the Metal',4+(19/60),22);
INSERT INTO songs(id,name,length,album_id) VALUES (247,'Return of the Reaper',4+(28/60),23);
INSERT INTO songs(id,name,length,album_id) VALUES (248,'Hell Funeral',2+(34/60),23);
INSERT INTO songs(id,name,length,album_id) VALUES (249,'Wargod',3+(44/60),23);
INSERT INTO songs(id,name,length,album_id) VALUES (250,'Tattooed Rider',3+(45/60),23);
INSERT INTO songs(id,name,length,album_id) VALUES (251,'Resurrection Day',5+(03/60),23);
INSERT INTO songs(id,name,length,album_id) VALUES (252,'Season of the Witch',5+(06/60),23);
INSERT INTO songs(id,name,length,album_id) VALUES (253,'Road Rage Killer',3+(48/60),23);
INSERT INTO songs(id,name,length,album_id) VALUES (254,'Grave Desecrator',3+(05/60),23);
INSERT INTO songs(id,name,length,album_id) VALUES (255,'Satanic Majesty',3+(13/60),23);
INSERT INTO songs(id,name,length,album_id) VALUES (256,'Ride on the Wild Side',4+(42/60),23);
INSERT INTO songs(id,name,length,album_id) VALUES (257,'Armed and Ready',4+(19/60),23);
INSERT INTO songs(id,name,length,album_id) VALUES (258,'Metal Warrior',4+(00/60),23);
INSERT INTO songs(id,name,length,album_id) VALUES (259,'Damned Tonight',3+(49/60),23);
INSERT INTO songs(id,name,length,album_id) VALUES (260,'Welcome to Hell',4+(13/60),23);
INSERT INTO songs(id,name,length,album_id) VALUES (261,'Into the Darkness',5+(08/60),24);
*/
	
# SELECT * FROM songs;

# Q.2
# SELECT name AS 'Band Name' FROM bands;
# SELECT b.name AS 'Band Name' FROM bands AS b;
# SELECT bands.name AS 'Band Name' FROM bands;

# Q.3
# SELECT MIN(release_year) FROM albums;
# SELECT * FROM albums WHERE release_year IS NOT NULL ORDER BY release_year LIMIT 1;

# Q.4
# SELECT * FROM bands JOIN albums ON bands.id = albums.band_id;
# SELECT DISTINCT bands.name AS 'Band Name' FROM bands JOIN albums ON bands.id = albums.band_id;
# SELECT bands.name AS 'Band Name' FROM bands JOIN albums ON bands.id = albums.band_id GROUP BY albums.band_id HAVING COUNT(albums.band_id) > 0;

# Q.5
# SELECT bands.name AS 'Band Name' FROM bands LEFT JOIN albums ON bands.id = albums.band_id GROUP BY albums.band_id HAVING COUNT(albums.id) = 0;
# SELECT bands.name AS 'Band Name'
# FROM bands
# LEFT JOIN albums ON bands.id = albums.band_id
# GROUP BY albums.band_id
# HAVING COUNT(albums.id) = 0;

# Q.6
# SELECT albums.name as Name , albums.release_year AS 'Release Year' , SUM(songs.length) AS Duration FROM albums
# JOIN songs ON songs.album_id = albums.id
# GROUP BY songs.album_id
# ORDER BY Duration DESC
# LIMIT 1;

# Q.7
# UPDATE albums 
# SET release_year = 2025
# WHERE id = 4;
# SELECT * FROM albums;

# Q.8
# INSERT INTO bands (name) VALUES ('Favorite Band Name');
# INSERT INTO albums (name, release_year, band_id) VALUES ('Favorite Album Name', 2000, 8);

# SELECT * FROM albums;

# Q.9
# DELETE FROM albums WHERE id = 19;
# DELETE FROM bands WHERE id = 8;
# SELECT * FROM bands;

# Q.10
# SELECT AVG(length) AS 'Average Song Duration' FROM songs;

# Q.11
# SELECT 
# 	albums.name AS 'Album', 
#     albums.release_year AS 'Release Year',
#     # SUM(songs.length) AS Duration
#     MAX(songs.length) AS Duration
# FROM albums
# JOIN songs ON songs.album_id = albums.id
# GROUP BY songs.album_id;

# Q.12
# SELECT 
# 	bands.name AS 'Band',
#     COUNT(songs.id) AS 'No of Songs'
# FROM bands 
# JOIN albums ON albums.band_id = bands.id
# JOIN songs ON songs.album_id = albums.id
# GROUP BY albums.band_id; 

# SELECT VERSION()  
# SELECT host, user, plugin FROM mysql.user WHERE user = 'root';

# ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'dummy';
 






