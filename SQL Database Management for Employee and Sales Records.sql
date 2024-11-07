CREATE DATABASE IF NOT EXISTS Company;
USE Company;
CREATE TABLE Managers (
    Manager_Id INT PRIMARY KEY,
    First_name VARCHAR(50),
    Last_name VARCHAR(50),
    DOB DATE,
    Age INT CHECK (Age > 20 AND Age < 70),
    Last_update TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    Gender VARCHAR(10),
    Department VARCHAR(50) NOT NULL,
    Salary INT NOT NULL
);
INSERT INTO Managers (Manager_Id, First_name, Last_name, DOB, Age, Gender, Department, Salary)
VALUES 
(1, 'John', 'Doe', '1980-05-15', 43, 'Male', 'IT', 30000),
(2, 'Aaliya', 'Smith', '1985-07-20', 38, 'Female', 'Finance', 35000),
(3, 'David', 'Lee', '1978-02-10', 46, 'Male', 'IT', 32000),
(4, 'Sophia', 'Brown', '1990-11-30', 33, 'Female', 'HR', 28000),
(5, 'Michael', 'Davis', '1975-06-25', 49, 'Male', 'IT', 27000),
(6, 'Emma', 'Wilson', '1983-04-15', 41, 'Female', 'Marketing', 25000),
(7, 'Chris', 'Johnson', '1982-12-05', 41, 'Male', 'Finance', 34000),
(8, 'Olivia', 'Martinez', '1989-08-18', 34, 'Female', 'IT', 36000),
(9, 'Noah', 'Garcia', '1987-09-30', 36, 'Male', 'Sales', 31000),
(10, 'Liam', 'Rodriguez', '1992-10-12', 31, 'Male', 'Operations', 20000);
SELECT First_name, Last_name, DOB
FROM Managers
WHERE Manager_Id = 1;
SELECT First_name, Last_name, (Salary * 12) AS Annual_Income
FROM Managers;
SELECT *
FROM Managers
WHERE First_name != 'Aaliya';
SELECT *
FROM Managers
WHERE Department = 'IT' AND Salary > 25000;
SELECT *
FROM Managers
WHERE Salary BETWEEN 10000 AND 35000;