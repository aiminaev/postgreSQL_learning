INSERT INTO album (name,year) VALUES
	 ('Riba',2012),
	 ('Sdelay pogromche!',1998),
	 ('Toxicity',2001),
	 ('Gruppa krovi',1988),
	 ('Mutter',2001),
	 ('Poshla jara',2019),
	 ('Return to Forever',2015),
	 ('One love',2009);

INSERT INTO artists (name) VALUES
	 ('Leningrad'),
	 ('Ruki vverh'),
	 ('System Of A Down'),
	 ('Kino'),
	 ('GAYAZOV$ BROTHER$'),
	 ('Rammstein'),
	 ('David Guetta'),
	 ('Scorpions');



INSERT INTO genre (name) VALUES
	 ('pop'),
	 ('jazz'),
	 ('rock'),
	 ('rap'),
	 ('classical');

INSERT INTO song (name,duration,id_album) VALUES
	 ('Moskva','00:03:14',1),
	 ('Voda','00:02:20',1),
	 ('Chuzgie gubi','00:04:03',2),
	 ('Ya tebya ukradu','00:04:39',2),
	 ('Prison song','00:03:21',3),
	 ('Deer dance','00:02:55',3),
	 ('Gruppa krovi','00:04:46',4),
	 ('Voina','00:04:05',4),
	 ('Poshla jara','00:02:50',5),
	 ('Shou-biz','00:03:15',5),
	 ('Mein herz brennt','00:04:40',6),
	 ('Sonne','00:04:33',6),
	 ('When Love Takes Over','00:03:12',8),
	 ('Going Out With a Bang','00:03:47',7),
	 ('Rock my car','00:03:20',7);

 INSERT INTO collection (year,name) VALUES
 (2021,'Music in car'),
 (2022,'Russian hits 90'),
 (2021,'Foreign hits'),
 (2017,'Songs for the new year'),
 (2018,'For training'),
 (2020,'Club'),
 (2021,'Best 2021'),
 (2015,'Hits of foreign rock');

INSERT INTO album_artists (id_artists,id_album) VALUES
	 (1,1),
	 (2,2),
	 (3,3),
	 (4,4),
	 (5,5),
	 (6,6),
	 (7,7),
	 (8,8);

INSERT INTO genre_artist (id_genre,id_artists) VALUES
	 (3,1),
	 (3,3),
	 (3,6),
	 (3,7),
	 (1,2),
	 (1,5),
	 (3,4),
	 (1,1);

INSERT INTO collection_song (id_collection,id_song) VALUES
	 (1,9),
	 (2,1),
	 (2,7),
	 (2,3),
	 (3,5),
	 (3,11),
	 (8,11),
	 (6,9),
	 (1,7);