drop database if exists vrtic;

create database 
    vrtic;

use vrtic;

create table odgojna_skupina(
sifra int not null primary key auto_increment,
skupina_1 int not null,
skupina_2 int not null,
skupina_3 int not null,
odgajateljica int not null,
datum_pocetka date
);

create table odgajateljica(
sifra int not null primary key auto_increment,
ime varchar(20),
prezime varchar(20),
strucna_sprema varchar(50)
);

create table skupina_1(
sifra int not null primary key auto_increment,
ime varchar(20),
prezime varchar(20),
opis text
);
create table skupina_2(
sifra int not null primary key auto_increment,
ime varchar(20),
prezime varchar(20),
opis text
);
create table skupina_3(
sifra int not null primary key auto_increment,
ime varchar(20),
prezime varchar(20),
opis text
);

alter table odgojna_skupina add foreign key (odgajateljica) references odgajateljica(sifra);

alter table odgojna_skupina add foreign key (skupina_1) references skupina_1(sifra);

alter table odgojna_skupina add foreign key (skupina_2) references skupina_2(sifra);

alter table odgojna_skupina add foreign key (skupina_3) references skupina_3(sifra);

insert into odgajateljica (sifra,ime,prezime,strucna_sprema) values (null,'nikolina','cebic','vss');

insert into skupina_1 (sifra,ime,prezime,opis) values (null,'pero','peric','djete treba vise paznje');

insert into skupina_1 (sifra,ime,prezime,opis) values (null,'luka','lukic','djete mora piti ljek');

insert into skupina_2 (sifra,ime,prezime,opis) values (null,'matej','peric','djete treba vise sna');

insert into skupina_2 (sifra,ime,prezime,opis) values (null,'oliver','lukic','djete mora piti ljek');

insert into skupina_3 (sifra,ime,prezime,opis) values (null,'tomislav','peric','djete treba vise sna');

insert into skupina_3 (sifra,ime,prezime,opis) values (null,'kruno','lukic','djete mora piti ljek');


insert into odgojna_skupina (sifra,skupina_1,skupina_2,skupina_3,odgajateljica,datum_pocetka) values (null,1,1,1,1,'2008-11-11');

insert into odgojna_skupina (sifra,skupina_1,skupina_2,skupina_3,odgajateljica,datum_pocetka) values (null,2,2,2,1,'2008-11-11');


