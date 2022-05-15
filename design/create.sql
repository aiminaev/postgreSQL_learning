create table if not exists genre
(
	id serial primary key not null,
	name varchar(40) not null
);
 create table if not exists artists
(
	id serial primary key not null,
	name varchar(40) not null
);
 create table if not exists album
(
	id serial primary key not null,
	name varchar(40) not null,
	year integer not null
);
 create table if not exists song
(
	id serial primary key not null,
	name varchar(40) not null,
	duration time not null,
	id_album integer references album(id) not null
);
create table if not exists collection
(
	id serial primary key not null,
	year integer not null,
	name varchar(40) not null
);
create table if not exists genre_artist
(
	id_genre integer references genre(id) not null,
	id_artists integer references artists(id) not null,
	constraint genre_artist_id_genre_id_artists_pk primary key (id_genre, id_artists)
);
create table if not exists album_artists
(
	id_artists integer references artists(id) not null,
	id_album integer references album(id) not null,
	constraint album_artists_id_artists_id_album_pk primary key (id_album, id_artists)
);
create table if not exists collection_song
(
	id_collection integer references collection(id) not null,
	id_song integer references song(id) not null,
	constraint collection_song_id_collection_id_song_pk primary key (id_collection, id_song)
)