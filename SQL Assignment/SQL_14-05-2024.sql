CREATE DATABASE sql_task_1;
USE sql_task_1;

CREATE TABLE Customers (
    CustomerID INTEGER PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    Phone VARCHAR(20),
    Address VARCHAR(100)
);

CREATE TABLE Employees (
    EmployeeID INTEGER PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Age INTEGER,
    Salary INTEGER
);

ALTER TABLE Employees ADD Email VARCHAR(100) NULL;
ALTER TABLE Employees MODIFY COLUMN Age VARCHAR(3);
ALTER TABLE Employees ADD CONSTRAINT Check_Salary CHECK (Salary >= 0);
DROP TABLE Customers;

-- TASK-2 starts from below

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    Phone VARCHAR(20),
    Address VARCHAR(100)
);
INSERT INTO Customers (CustomerID, FirstName, LastName, Email, Phone, Address) VALUES 
    (101, 'John', 'Doe', 'johndoe@example.com', '123-456-7890', '123 Main Street'),
    (102, 'Jane', 'Smith', 'janesmith@example.com', '987-654-3210', '456 Elm Avenue'),
    (103, 'Robert', 'Johnson', 'robertjohnson@example.com', '555-123-4567', '789 Oak Drive');

INSERT INTO Customers VALUES (104, 'Sarah', 'Williams', 'sarahwilliams@example.com', '111-222-3333', '789 Maple Street');
SELECT * FROM Customers;

UPDATE Customers SET Phone = '987-654-3210' WHERE CustomerID = 101;
Select * FROM Customers;

DELETE FROM Customers WHERE CustomerID = 103;
SELECT * FROM Customers;

