
/*Write a SQL query to list the names of employees along with the names of the departments they work in.

Write a SQL query to list all the departments and the employees working in them, including departments with no employees.

Write a SQL query to find the names of employees who do not belong to any department (i.e., no matching department ID).

Write a SQL query to list the names of employees who work in the same department as 'Jane Doe'.

Write a SQL query to find the department with the highest total salary paid to its employees.*/

-- Creating the Employees table
CREATE TABLE Employees_Data (
    EmployeeID INT PRIMARY KEY,
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    Email NVARCHAR(100) UNIQUE,
    DepartmentID INT,
    HireDate DATE,
    Salary DECIMAL(10, 2)
);

delete from Employees_Data
where EmployeeID =19026

-- Creating the Departments table
CREATE TABLE Departments_Data (
    DepartmentID INT PRIMARY KEY,
    DepartmentName NVARCHAR(100)
);


-- Inserting data into the Employees table
INSERT INTO Employees_Data (EmployeeID, FirstName, LastName, Email, DepartmentID, HireDate, Salary)
VALUES 
(1, 'John', 'Smith', 'john.smith@example.com', 101, '2021-06-15', 75000.00),
(2, 'Jane', 'Doe', 'jane.doe@example.com', 102, '2020-03-10', 85000.00),
(3, 'Michael', 'Johnson', 'michael.johnson@example.com', 101, '2019-11-22', 95000.00),
(4, 'Emily', 'Davis', 'emily.davis@example.com', 103, '2022-01-05', 68000.00),
(5, 'William', 'Brown', 'william.brown@example.com', 102, '2018-07-19', 80000.00);

insert into Employees_Data (EmployeeID, FirstName, LastName, Email, DepartmentID, HireDate, Salary)
values(19026,'rafi','tanvir','rafi@gmail.com',104,'2015-06-22',1000000)

-- Inserting data into the Departments table
INSERT INTO Departments_Data (DepartmentID, DepartmentName)
VALUES
(101, 'Human Resources'),
(102, 'Finance'),
(103, 'IT');

select * from Employees_Data
select * from Departments_Data

SELECT CONCAT(Employees_Data.FirstName,' ',Employees_Data.LastName)as [Full Name],
Departments_Data.DepartmentName
from Employees_Data
left join Departments_Data on
Employees_Data.DepartmentID=Departments_Data.DepartmentID


SELECT 
    CONCAT(Employees_Data.FirstName, ' ', Employees_Data.LastName) AS [Full Name],
    Departments_Data.DepartmentName
FROM 
    Departments_Data
Right JOIN Employees_Data 
    ON Employees_Data.DepartmentID = Departments_Data.DepartmentID;


Select Employees_Data.FirstName,Employees_Data.LastName
from Employees_Data left join Departments_Data on
Employees_Data.DepartmentID=Departments_Data.DepartmentID
where Departments_Data.DepartmentID is null


select FirstName,LastName from  Employees_Data
where DepartmentID = (
    SELECT DepartmentID
    FROM Employees_Data
    WHERE FirstName = 'Jane' AND LastName = 'Doe'
);


select Distinct Departments_Data.DepartmentName from Departments_Data
inner join Employees_Data on 
Departments_Data.DepartmentID =Employees_Data.DepartmentID
where salary =(select max(Employees_Data.Salary) from Employees_Data)


