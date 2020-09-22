create table Musics (
Id int primary key identity,
Name nvarchar (40)  not null,
LaunchDate Date,
Length decimal,
GenreId int FOREIGN KEY REFERENCES Genres (Id),
SingerId int FOREIGN KEY REFERENCES Singers (Id)
)

create table Singers (
Id int primary key identity,
Name nvarchar (100) not null,
BirthDate Date,
Image varchar,
)

create table Genres (
Id int primary key identity,
Name nvarchar (40) not null,
)

Alter table Genres 
add Count int

create table Usernames (
Id int primary key identity,
Name nvarchar (50) not null,
BirthDate Date,
Email nvarchar (50),
CountryId int FOREIGN KEY REFERENCES Countries (Id)
)


create table Countries (
Id int primary key identity,
Name nvarchar (50),
)

create table Listenings  (
Id int primary key identity,
UsernamesId int FOREIGN KEY REFERENCES Usernames(Id),
MusicsId int FOREIGN KEY REFERENCES Musics(Id),
ListeningDate Date,
)

Alter table Listenings 
add Count int


create table Likes  (
Id int primary key identity,
UsernamesId int FOREIGN KEY REFERENCES Usernames(Id),
MusicsId int FOREIGN KEY REFERENCES Musics(Id),
)
Alter table Likes 
add GenresId int FOREIGN KEY REFERENCES Genres(Id)


select * from ShowUserFavorites
select * from ShowlisteningsMusics
select * from GenresCount
select * from ShowListenings
select * from ShowFavorites
select * from ShowGenres 