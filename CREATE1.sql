create table if not exists genre (
	id SERIAL primary key,
	title VARCHAR(60) not null
);

create table if not exists executer (
	id SERIAL primary key,
	name VARCHAR(60) not null
);

create table if not exists genre_executer (
	executer_id INTEGER references executer (id),
	genre_id INTEGER references genre (id),
	constraint pk_genre_executer primary key (executer_id, genre_id)
);

create table if not exists album (
	id SERIAL primary key,
	album_title VARCHAR(60) unique not null,
	year_of_release INTEGER check (year_of_release > 1900)
);

create table if not exists album_executer (
	executer_id INTEGER references executer (id),
	album_id INTEGER references album (id),
	constraint pk_album_executer primary key (executer_id, album_id)
);

create table if not exists track (
	id SERIAL primary key,
	album_id INTEGER references album (id),
	track_name VARCHAR(60) not null,
	song_duration INTEGER
);

create table if not exists collection_of_songs (
	id SERIAL primary key,
	release_date_collrction INTEGER check (release_date_collrction > 1900),
	track_name VARCHAR(60) unique not null
);

create table if not exists track_collection (
	track_id INTEGER references track (id),
	collection_of_songs_id INTEGER references collection_of_songs (id),
	constraint pk_track_collection primary key (track_id, collection_of_songs_id )
	
);









