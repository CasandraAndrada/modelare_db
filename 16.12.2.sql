CREATE TABLE Proprietar (
    id_proprietar varchar(50),
    proprietar_cnp integer NOT NULL,
    Adresa varchar(50),
	primary key (id_proprietar, CNP, adresă)
);

CREATE TABLE IF NOT EXISTS primărie(
	ID serial not null,
	angajați integer not null,
	primary key(id),
);

CREATE TABLE IF NOT EXISTS UAT(
	ID serial not null,
	primărie_id integer not null,
	nume varchar(50) not null,
	primary key(id),
	FOREIGN Key (primarie_id) REFERENCES primărie(id)
);
CREATE TABLE IF NOT EXISTS Teren(
	ID serial not null,
	uat_id integer not null,
	suprafata integer not null,
	primary key (id),
	FOREIGN Key (ID_UAT) REFERENCES UAT(ID_UAT)
);
CREATE TABLE IF NOT EXISTS Proprietar_Teren (
    proprietar_cnp,
    proprietar_serie_numar varchar not null,
    PRIMARY KEY (CNP, ID_Teren),
    FOREIGN KEY (CNP) REFERENCES Proprietar(CNP),
    FOREIGN KEY (ID_Teren) REFERENCES Teren(ID_Teren)
);

CREATE TABLE IF NOT EXISTS adrese(
	id serial not null
	proprietar_cnp integer not null,
	proprietar_serie_numar varchar (9) not null,
	starada varchar (100) not null,
	activa bool not null,
	primary key (id),
	foreign key (proprietar_cnp,propriettar_serie_numar) references proprietar (cnp, serie_numar)
);

CREATE TABLE IF NOT EXISTS registru_agricol(
	teren_id integer not null,
	primărie_id integer not null UNIQUE,
	primary key (teren_id, primărie_id),
	foreign key (teren_id), references teren(id),
	foreign key (primărie_id) references primărie(id)
);
