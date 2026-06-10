-- Student Management Database Project

-- Create Table
CREATE TABLE Students (
    StudentID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(50),
    Gender CHAR(1),
    Age INT,
    Grade VARCHAR(2),
    MathScore INT,
    ScienceScore INT,
    EnglishScore INT
);

-- Insert Records
INSERT INTO Students
(Name, Gender, Age, Grade, MathScore, ScienceScore, EnglishScore)
VALUES
('Aarav','M',16,'A',85,90,88),
('Priya','F',15,'A',92,89,95),
('Rohan','M',16,'B',78,82,80),
('Ananya','F',15,'A',95,94,96),
('Kabir','M',17,'C',65,70,68),
('Sneha','F',16,'B',88,85,90),
('Arjun','M',15,'A',91,87,84),
('Meera','F',17,'B',76,80,79),
('Vivaan','M',16,'C',72,75,70),
('Diya','F',15,'A',89,93,91);

-- Display All Students
SELECT * FROM Students;

-- Average Math Score
SELECT AVG(MathScore) AS AvgMathScore
FROM Students;

-- Average Science Score
SELECT AVG(ScienceScore) AS AvgScienceScore
FROM Students;

-- Average English Score
SELECT AVG(EnglishScore) AS AvgEnglishScore
FROM Students;

-- Top Performer
SELECT Name,
       (MathScore + ScienceScore + EnglishScore) AS TotalScore
FROM Students
ORDER BY TotalScore DESC
LIMIT 1;

-- Student Count by Grade
SELECT Grade,
       COUNT(*) AS StudentCount
FROM Students
GROUP BY Grade;

-- Average Score by Gender
SELECT Gender,
       AVG((MathScore + ScienceScore + EnglishScore)/3.0) AS AverageScore
FROM Students
GROUP BY Gender;

-- Students with Math Score Greater Than 80
SELECT *
FROM Students
WHERE MathScore > 80;

-- Update Grade
UPDATE Students
SET Grade = 'A'
WHERE Name = 'Rohan';

-- Verify Update
SELECT *
FROM Students
WHERE Name = 'Rohan';