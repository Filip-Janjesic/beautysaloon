drop database if exists beauty_salon;
create database beauty_salon;
use beauty_salon;

create table masseur(
id int not null primary key auto_increment,
iban char(20) not null,
person int
);

create table person(
id int not null primary key auto_increment,
person_name varchar(50) not null
);

create table client(
id int not null primary key auto_increment,
person int
);

create table visit(
id int not null primary key auto_increment,
date_visit datetime not null,
client int not null,
masseur int not null
);

create table service(
id int not null primary key auto_increment,
name varchar(50) not null,
visit int
);

alter table client add foreign key (person) references person (id);
alter table masseur add foreign key (person) references person (id);
alter table visit add foreign key (client) references client (id);
alter table visit add foreign key (masseur) references masseur (id);
alter table service add foreign key (visit) references visit (id);
