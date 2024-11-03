CREATE TABLE Country (
    Id INT PRIMARY KEY,
    Country_name VARCHAR(50),
    Population INT,
    Area INT
);

CREATE TABLE Persons (
    Id INT PRIMARY KEY,
    Fname VARCHAR(50),
    Lname VARCHAR(50),
    Population INT,
    Rating DECIMAL(3, 1),
    Country_Id INT,
    Country_name VARCHAR(50)
);

INSERT INTO Country (Id, Country_name, Population, Area) VALUES
(1, 'USA', 331000000, 9834000),
(2, 'Canada', 38000000, 9985000),
(3, 'UK', 67000000, 243000),
(4, 'India', 1380000000, 3287000),
(5, 'Australia', 25000000, 7692000),
(6, 'Brazil', 213000000, 8516000),
(7, 'China', 1440000000, 9597000),
(8, 'France', 67000000, 643800),
(9, 'Germany', 83000000, 357000),
(10, 'Italy', 60000000, 301000);

INSERT INTO Persons (Id, Fname, Lname, Population, Rating, Country_Id, Country_name) VALUES
(1, 'John', 'Doe', 5000, 4.3, 1, 'USA'),
(2, 'Jane', 'Smith', 3000, 4.1, 2, 'Canada'),
(3, 'David', 'Johnson', 7000, 3.8, 3, 'UK'),
(4, 'Priya', 'Sharma', 9000, 4.7, 4, 'India'),
(5, 'Amit', 'Singh', 4000, 4.5, 4, 'India'),
(6, 'Linda', 'Brown', 6000, 3.6, 5, 'Australia'),
(7, 'Paul', 'Davis', 8000, 4.2, 6, 'Brazil'),
(8, 'Chen', 'Li', 4500, 4.8, 7, 'China'),
(9, 'Marie', 'Dupont', 3500, 4.9, 8, 'France'),
(10, 'Luca', 'Rossi', 2000, 4.0, 10, 'Italy');

-- Q1
SELECT DISTINCT Country_name FROM Persons;

-- Q2
SELECT Fname AS First_Name, Lname AS Last_Name FROM Persons;

-- Q3
SELECT Fname,Rating FROM Persons WHERE Rating > 4.0;

-- Q4
SELECT * FROM Country WHERE Population > 1000000;

-- Q5
SELECT * FROM Persons WHERE Country_name = 'USA' OR Rating > 4.5;

-- Q6
SELECT * FROM Persons WHERE Country_name IS NULL;

-- Q7
SELECT * FROM Persons WHERE Country_name IN ('USA','Canada','UK');

-- Q8
SELECT * FROM Persons WHERE Country_name NOT IN ('India', 'Australia');

-- Q9
SELECT * FROM Country WHERE Population BETWEEN 500000 AND 20000000;

-- Q9
SELECT * FROM Country WHERE Population BETWEEN 500000 AND 20000000;

-- Q10 
SELECT * FROM Country WHERE Country_name NOT LIKE 'C%';

