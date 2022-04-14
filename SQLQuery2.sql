SELECT * FROM Students

ALTER TABLE Students
ADD Point INT 

UPDATE Students
SET Point=98
WHERE Id=9

SELECT * FROM Students
JOIN Groups ON Students.GroupId=Groups.Id

CREATE TABLE Certificates
(
	Id INT PRIMARY KEY IDENTITY,
	Name NVARCHAR(20) NOT NULL,
	MinPoint INT,
	MaxPoint INT
)

INSERT INTO Certificates
VALUES
('Adi',65,84),
(N'Şərəf',85,94),
(N'Yüksək şərəf',95,100)

TRUNCATE TABLE Certificates

SELECT * FROM Certificates

SELECT * FROM Students
LEFT JOIN Certificates ON Students.Point BETWEEN Certificates.MinPoint AND Certificates.MaxPoint

SELECT * FROM Certificates

CREATE TABLE Departments
 (
	Id INT PRIMARY KEY IDENTITY,
	Name NVARCHAR(20) NOT NULL,
	DepartmentId INT 
 )


 SELECT D.Id,D.Name,MD.Name AS 'MainDep' FROM Departments AS D
 LEFT JOIN Departments AS MD ON D.DepartmentId = MD.Id

 SELECT D.Id,D.Name ,(SELECT COUNT(Id) FROM Departments AS SB WHERE SB.DepartmentId = D.Id) AS 'SubDepCount' FROM Departments AS D