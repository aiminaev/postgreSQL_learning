create table if not exists genre
(
	id serial primary key,
	name varchar(40) not null
);
 create table if not exists artists
(
	id serial primary key,
	name varchar(40) not null,
	id_genre integer references genre(id)
);
 create table if not exists album
(
	id serial primary key,
	id_artist integer references artists(id),
	name varchar(40) not null,
	year integer not null
);
 create table if not exists song
(
	id serial primary key,
	name varchar(40) not null,
	duration time not null,
	id_album integer references album(id)
)
