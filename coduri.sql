CREATE TABLE IF NOT EXISTS teacher_roles(
	id SERIAL PRIMARY KEY NOT NULL,
	name VARCHAR (255) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS account_roles (
	id serial not null, 
	name varchar (50) not null unique,
	creation_date date not null,
	primary key(id)
)

CREATE TABLE IF NOT EXISTS account_roles2 (
	id serial not null, 
	name varchar (50) not null unique,
	creation_date date not null,
	primary key(id, name)
);

CREATE TABLE IF NOT EXISTS account_roles3 (
	id integer not null, 
	name varchar (50) not null,
	creation_date date not null,
	primary key(id, name)
);

CREATE TABLE IF NOT EXISTS date_personale (
	id serial not null, 
	name varchar (50) not null,
	age SMALLINT,
	birth_date date not null,
	adress char (100) not null,
	primary key(id)
);

CREATE TABLE IF NOT EXISTS date_personale2 (
	id serial not null, 
	name varchar (50) not null unique,
	age SMALLINT,
	birth_date date not null,
	adress char (100) not null,
	primary key (id, name)
);

CREATE TABLE IF NOT EXISTS CD (
	id integer not null, 
	name varchar (50) not null unique,
	price SMALLINT,
	release_year date not null,
	singer char (100) not null,
	primary key(id)
);

CREATE TABLE IF NOT EXISTS Picturi (
	id integer not null, 
	name varchar (50) not null unique,
	price SMALLINT,
	exposure_year date not null,
	painter char (100) not null,
	primary key(id,name)
);


CREATE TABLE IF NOT EXISTS country (
	id serial primary key not null,
	indicativ char(3) not null,
	geometry varchar (100) not null,
	area DECIMAL not null
);

CREATE TABLE IF NOT EXISTS county (
	id serial primary key not null,
	country_id integer not null,
	area DECIMAL not null,
	siruta integer not null,
	geometry varchar (100) not null default 'POLYGON',
	foreign key (country_id) references country (id)
	);
	
CREATE TABLE IF NOT EXISTS universitate (
	id serial primary key not null,
	nume_universitate char(50) not null,
	geometry varchar (100) not null,
	area DECIMAL not null
);

CREATE TABLE IF NOT EXISTS facultate (
	id serial primary key not null,
	universitate_id integer not null,
	area DECIMAL not null,
	adresa char (50) not null,
	geometry varchar(100) not null default 'POLYGON'
);

--one to one --

/*CREATE TABLE IF NOT EXISTS users (
	id serial primary key not null, -- coloana id joacă dublu rol de PK și FK pentru ca o cheie primară este by default unică
	name varchar (50) not null,
	phone_number varchar (20) null
);

CREATE TABLE IF NOT EXISTS address(
	id serial primary key not null,
	address varchar (200) not null,
	is_valid bool not null,
	foreign key(id) references users(id)
);

CREATE TABLE IF NOT EXISTS books (
	id serial primary key not null,
	title varchar(100) not null,
	isbn varchar(10) not null,
	published_date date not null,
	price decimal not null
);

CREATE TABLE IF NOT EXISTS users_books (
	id serial primary key not null,
	users_id integer not null,
	books_id integer not null,
	review text not null,
	review_date date not null,
	foreign key(users_id) references users(id),
	foreign key(books_id) references books(id)
);*/


CREATE TABLE IF NOT EXISTS profesor (
	id serial primary key not null,
	nume_profesor varchar not null,
	e-mail varchar(50) not null,
	
);

CREATE TABLE IF NOT EXISTS materie (
	id serial primary key not null,
	nume_materie varchar not null,
	ora time not null,
	ziua date not null
);

CREATE TABLE IF NOT EXISTS profesor_materie (
	id serial primary key not null,
	profesor_id integer not null,
	materie_id integer not null,
	foreign key(profesor_id) references materie(id),
	foreign key(materie_id) references profesor(id)
);

CREATE TABLE IF NOT EXISTS proprietar (
	id serial primary key not null, 
	nume varchar(50) not null,
	cnp varchar(50) not null,
	serie_nr_ci varchar(9) not null
);

CREATE TABLE IF NOT EXISTS adresa_proprietar (
	id serial primary key not null, 
	adresa varchar(200) not null,
	current_adress bool default TRUE,
	foreign key(id) references proprietar(id) --implementare 1 to 1. fk joaca rol dublu si de fk fiind unică
);

CREATE TABLE IF NOT EXISTS terenuri (
	id serial primary key not null,
	cf integer not null,
	intravilan bool not null,
	suprafata decimal not null,
	categorie_folosinta varchar(5) not null
);

CREATE TABLE IF NOT EXISTS proprietar_terenuri (
	id serial primary key not null,
	proprietar_id integer not null,
	terenuri_id integer not null,
	foreign key(proprietar_id) references proprietar(id),
	foreign key(terenuri_id) references terenuri(id)
);

CREATE TABLE IF NOT EXISTS proprietar_terenuri2 (
	proprietar_id integer not null,
	terenuri_id integer not null,
	primary key (proprietar_id,terenuri_id),
	foreign key(proprietar_id) references proprietar(id),
	foreign key(terenuri_id) references terenuri(id)
);
