CREATE DATABASE P327Db

USE P327Db

CREATE TABLE Students (Id INT PRIMARY KEY identity, Name nvarchar(20) NOT NULL, Surname nvarchar(20) DEFAULT 'XXXXXX', Age int CHECK(Age > 18), Point int CHECK (POINT >=0 AND POINT<=100))

INSERT INTO Students
VALUES('Fikrat','Huseynov','19','99')

DELETE FROM Students 
WHERE Name = 'Fikrat'

SELECT * FROM Students