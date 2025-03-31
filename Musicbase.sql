create table IF not exists Genres (
id SERIAL primary key,
genre_name VARCHAR(80) not NULL
);

create table if not exists Perfomers (
id SERIAL primary key references Genres(id),
performer_name VARCHAR(80) not null
);

create table if not exists Albums (
id SERIAL primary key,
album_name VARCHAR(80) not null,
release_year date
);

create table if not exists Tracks (
id INTEGER primary key references Albums(id),
track_name VARCHAR(80) not null,
duration_track NUMERIC(2, 2) not null   
);