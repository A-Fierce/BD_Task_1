create table if not exists Genre (
id serial primary key,
name varchar(40) not null
);

create table if not exists musicians (
id serial primary key,
name varchar(40) not null,
id_genre int references genre(id)
);

create table if not exists albums (
id serial primary key,
name varchar(40) not null,
year int check(year > 0),
id_musicians int references musicians(id)
);

create table if not exists tracks (
id serial primary key,
name varchar(40) not null,
duration real not null,
id_albums int references albums(id)
);