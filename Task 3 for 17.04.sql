CREATE DATABASE Cinema

USE Cinema

CREATE TABLE Movies (
	ID int primary key identity,
	Name nvarchar(255) NOT NULL,
	GenreId int foreign key references Genres(ID),
	Year int CHECK(Year >= 1950 and Year <=2024
	)
)

CREATE TABLE Genres(
	ID int primary key identity,
	Genre nvarchar(255) NOT NULL UNIQUE
)

CREATE TABLE CinemaRooms (
	ID int primary key identity,
	RoomName nvarchar(255) NOT NULL,
	MoviesType nvarchar(20) NOT NULL
)

CREATE TABLE Times(
	ID int primary key identity,
	Time nvarchar(50) NOT NULL UNIQUE
)

CREATE TABLE Languages (
	ID int primary key identity,
	Name nvarchar(255) NOT NULL UNIQUE
)

CREATE TABLE Sessions (
	ID int primary key identity,
	MovieID int foreign key references Movies(ID),
	Date datetime2 not null,
	RoomID int foreign key references CinemaRooms(ID),
	LanguageID int foreign key references Languages(ID)
)

DROP TABLE Sessions

INSERT INTO Genres 
VALUES ('Fantasy'),
	   ('Sci-Fi'),	
	   ('Action'),
	   ('Drama'),
	   ('Horror'),	
	   ('Western')
