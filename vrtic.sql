drop database if exists vrtic;

create database 
    vrtic;

use vrtic;

create table odgojna_skupina(
sifra int not null primary key auto_increment,
skupina_1 int not null,
skupina_2 int not null,
skupina_3 int not null,
odgajateljica int not null
);

create table odgajateljica(
sifra int not null primary key auto_increment,
ime varchar(20) not null,
prezime varchar(20)not null,
strucna_sprema varchar(50)not null
);

create table skupina_1(
sifra int not null primary key auto_increment,
ime varchar(20)not null,
prezime varchar(20)not null,
opis text,
broj_telefona_roditelja varchar(20)not null,
datum_pocetka date
);
create table skupina_2(
sifra int not null primary key auto_increment,
ime varchar(20) not null,
prezime varchar(20) not null,
opis text,
broj_telefona_roditelja varchar(20)not null,
datum_pocetka date
);
create table skupina_3(
sifra int not null primary key auto_increment,
ime varchar(20)not null,
prezime varchar(20)not null,
opis text,
broj_telefona_roditelja varchar(20)not null,
datum_pocetka date
);

alter table odgojna_skupina add foreign key (odgajateljica) references odgajateljica(sifra);

alter table odgojna_skupina add foreign key (skupina_1) references skupina_1(sifra);

alter table odgojna_skupina add foreign key (skupina_2) references skupina_2(sifra);

alter table odgojna_skupina add foreign key (skupina_3) references skupina_3(sifra);

insert into odgajateljica (sifra,ime,prezime,strucna_sprema) values (null,'nikolina','cebic','vss');

insert into skupina_1 (sifra,ime,prezime,opis,broj_telefona_roditelja,datum_pocetka) values (null,'pero','peric','djete treba vise paznje','0983384666','2008-11-11');

insert into skupina_1 (sifra,ime,prezime,opis,broj_telefona_roditelja,datum_pocetka) values (null,'luka','lukic','djete mora piti ljek','0955663335','2008-11-11');

insert into skupina_2 (sifra,ime,prezime,opis,broj_telefona_roditelja,datum_pocetka) values (null,'matej','peric','djete treba vise sna','091777888','2008-11-19');

insert into skupina_2 (sifra,ime,prezime,opis,broj_telefona_roditelja,datum_pocetka) values (null,'oliver','lukic','djete mora piti ljek','091555999','2008-11-19');

insert into skupina_3 (sifra,ime,prezime,opis,broj_telefona_roditelja,datum_pocetka) values (null,'tomislav','peric','djete treba vise sna','0987771112','2008-11-28');

insert into skupina_3 (sifra,ime,prezime,opis,broj_telefona_roditelja,datum_pocetka) values (null,'kruno','lukic','djete mora piti ljek','09866655521','2008-11-28');


insert into odgojna_skupina (sifra,skupina_1,skupina_2,skupina_3,odgajateljica) values (null,1,1,1,1);

insert into odgojna_skupina (sifra,skupina_1,skupina_2,skupina_3,odgajateljica) values (null,2,2,2,1);



