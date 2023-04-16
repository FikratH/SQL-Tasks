CREATE DATABASE P327UniSystemDb

USE P327UniSystemDb

CREATE TABLE Groups(
Id int primary key identity,
No nvarchar(50) NOT NULL UNIQUE
)

CREATE TABLE Students(
Id int primary key identity,
Name nvarchar(100) NOT NULL,
Surname nvarchar(120) DEFAULT 'xxxxxx',
Age int CHECK(Age >= 15),
GroupId int foreign key references Groups(Id)
)

CREATE TABLE Subjects(
Id int primary key identity,
Name nvarchar(255) NOT NULL UNIQUE
)

CREATE TABLE Exams(
Id int primary key identity,
StartDate datetime2 NOT NULL,
EndDate datetime2 NOT NULL,
SubjectId int foreign key references Subjects(Id)
)

CREATE TABLE StudentExams(
Id int primary key identity,
StudentId int foreign key references Students(Id),
ExamId int foreign key references Exams(Id),
Point int CHECK(Point BETWEEN 0 AND 100)
)

SELECT stu.Id, stu.Name, stu.Surname, stu.Age, g.No FROM Students stu
JOIN Groups g
ON stu.GroupId = g.Id

SELECT stu.id, stu.Name, stu.Surname, g.No AS GroupName, sub.Name AS ExamSubject, ex.StartDate AS ExamStartDate, ex.EndDate AS ExamEndDate, stuEx.Point FROM Students stu
JOIN Groups g
ON stu.GroupId = g.Id
JOIN StudentExams stuEx
ON stu.id = stuEx.StudentId
JOIN Exams ex
ON stuEx.ExamId = ex.Id
JOIN Subjects sub 
ON ex.SubjectId = sub.Id