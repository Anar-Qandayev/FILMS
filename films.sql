CREATE DATABASE Cinema
use Cinema
create table Tickets
(
Id int identity(1,1) primary key,
SoldDate date getdate(),
Price float,
Place decimal,
CustometId int references Customers(Id),
HallId int references Hall(Id),
FilmId int references Films(Id),
SeansId int references Seans(Id)
)
INSERT INTO Tickets(SoldDate,Price,Place,CustometId,HallId,SeansId)
values('2022-04-13',4.50,21,1,1,1)
SELECT*FROM Tickets

create table Customers
(
Id int identity(1,1) primary key, 
Name nvarchar(50),
SurName nvarchar(60),
Age int
)
INSERT INTO Customers(Name,SurName,Age)
values('Anar','Qandayev',21)
SELECT*FROM Customers
 

create table Hall
(
Id int identity(1,1) primary key, 
Name nvarchar(255),
SeatCount int
)
INSERT INTO Hall(Name,SeatCount)
values('Anar',60)
SELECT*FROM Hall

create table Seans
(
Id int identity(1,1) primary key, 
Time date
)
INSERT INTO Seans(Time)
values('2022-03-23')
SELECT*FROM Seans

create table Films
(
Id int identity(1,1) primary key,
ReleaseDate date,
FilmId int references Films(Id)
)
INSERT INTO Films(ReleaseDate,FilmId)
values('2021-07-21',1)
SELECT*FROM Films

create table Actors
(
Id int identity(1,1) primary key, 
Name nvarchar(50),
Surname nvarchar(60),
Age int
)
INSERT INTO Actors(Name,Surname,Age)
values('Hesen','Memmedov',61)
SELECT*FROM Actors

create table Janrs
(
Id int identity(1,1) primary key, 
Name  nvarchar(255)
)
INSERT INTO Janrs(Name)
values('Ormantik')
SELECT*FROM Janrs
