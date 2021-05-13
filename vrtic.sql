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
ime varchar(20) not null,
prezime varchar(20)not null,
strucna_sprema varchar(50)not null
);

create table skupina_1(
sifra int not null primary key auto_increment,
ime varchar(20)not null,
prezime varchar(20)not null,
opis text,
broj_telefona_roditelja varchar(20)not null
);
create table skupina_2(
sifra int not null primary key auto_increment,
ime varchar(20) not null,
prezime varchar(20) not null,
opis text,
broj_telefona_roditelja varchar(20)not null
);
create table skupina_3(
sifra int not null primary key auto_increment,
ime varchar(20)not null,
prezime varchar(20)not null,
opis text,
broj_telefona_roditelja varchar(20)not null
);

alter table odgojna_skupina add foreign key (odgajateljica) references odgajateljica(sifra);

alter table odgojna_skupina add foreign key (skupina_1) references skupina_1(sifra);

alter table odgojna_skupina add foreign key (skupina_2) references skupina_2(sifra);

alter table odgojna_skupina add foreign key (skupina_3) references skupina_3(sifra);

insert into odgajateljica (sifra,ime,prezime,strucna_sprema) values (null,'nikolina','cebic','vss');

insert into skupina_1 (sifra,ime,prezime,opis,broj_telefona_roditelja) values (null,'pero','peric','djete treba vise paznje','0983384666');

insert into skupina_1 (sifra,ime,prezime,opis,broj_telefona_roditelja) values (null,'luka','lukic','djete mora piti ljek','0955663335');

insert into skupina_2 (sifra,ime,prezime,opis,broj_telefona_roditelja) values (null,'matej','peric','djete treba vise sna','091777888');

insert into skupina_2 (sifra,ime,prezime,opis,broj_telefona_roditelja) values (null,'oliver','lukic','djete mora piti ljek','091555999');

insert into skupina_3 (sifra,ime,prezime,opis,broj_telefona_roditelja) values (null,'tomislav','peric','djete treba vise sna','0987771112');

insert into skupina_3 (sifra,ime,prezime,opis,broj_telefona_roditelja) values (null,'kruno','lukic','djete mora piti ljek','09866655521');


insert into odgojna_skupina (sifra,skupina_1,skupina_2,skupina_3,odgajateljica,datum_pocetka) values (null,1,1,1,1,'2008-11-11');

insert into odgojna_skupina (sifra,skupina_1,skupina_2,skupina_3,odgajateljica,datum_pocetka) values (null,2,2,2,1,'2008-11-11');


