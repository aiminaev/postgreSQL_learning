--количество исполнителей в каждом жанре;
select genre.name , count(id_artists) as count_artist
from genre_artist
join genre on genre_artist.id_genre = genre.id
group by genre.name;

--количество треков, вошедших в альбомы 2019-2020 годов;
select album.name, count(song.name) as count_song
from album
join song on album.id = song.id_album
where album.year between 2019 and 2020
group  by  album.name;

--средняя продолжительность треков по каждому альбому;
select album.name, avg(song.duration)
from album
join song on album.id = song.id_album
group by album.name

--все исполнители, которые не выпустили альбомы в 2020 году;
select artists.name
from artists
join album_artists on artists.id = album_artists.id_artists
join album on album.id = album_artists.id_album
where album.year != 2020;

--названия сборников, в которых присутствует конкретный исполнитель (выберите сами);
select collection.name
from collection
join collection_song on collection.id = collection_song.id_collection
join song on song.id = collection_song.id_song
join album_artists on song.id_album = album_artists.id_album
join artists on artists.id = album_artists.id_artists
where artists.name = 'Leningrad'

--название альбомов, в которых присутствуют исполнители более 1 жанра;
select album.name
from album
left join album_artists on album.id = album_artists.id_album
left join artists on artists.id = album_artists.id_artists
left join genre_artist on genre_artist.id_artists = artists.id
left join genre on genre.id=genre_artist.id_genre
group by album.name
having count(genre.name) > 1

--наименование треков, которые не входят в сборники;
select song.name
from song
left join collection_song on song.id = collection_song.id_song
where  collection_song.id_song is null

--исполнителя(-ей), написавшего самый короткий по продолжительности трек

select artists.name
from artists
join album_artists on artists.id = album_artists.id_artists
join album on album.id = album_artists.id_album
join song on song.id_album = album.id
where song.duration= (select min(song.duration) from song)

--название альбомов, содержащих наименьшее количество треков.
select album.name
from album
join song on song.id_album=album.id
where song.id_album in (
    select id_album
    from song
    group by id_album
    having count(id)= (
        select count(id)
        from song
        group by id_album
        order by count
        limit 1
    )
)
order by album.name