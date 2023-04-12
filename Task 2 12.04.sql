CREATE DATABASE Department

USE Department

--2 TASK

CREATE TABLE Employees(	
	ID int primary key identity(1,1),
	FullName nvarchar(255) not null,
	Age int not null CHECK(Age > 0 ),
	Email nvarchar(255) not null UNIQUE,
	Salary decimal(6,2) not null CHECK(Salary >=300.00 and Salary <=2000.00)
)

--3 Task
INSERT INTO Employees
VALUES ('Riad Abdullayev',15,'Riad@gmail.com',1500),
	   ('Fikret Huseynov',16,'Fikret@gmail.com',1999.99),
	   ('Ayxan Mustafayev',21,'Ayxan@gmail.com',1499.99),
	   ('Vaqif Huseynov',16,'Vaqif@gmail.com',1099.99)


--5 Task
UPDATE Employees
SET Salary = 1200.05
WHERE ID = 1;

--4 TASK
SELECT * FROM Employees


--6 TASK
SELECT * FROM Employees
WHERE Salary >= 500 and Salary <= 1500

--7 TASK

SELECT emp.FullName, emp.Email, emp.Salary FROM Employees emp
ORDER BY Salary DESC

