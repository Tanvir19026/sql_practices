
/*Write a SQL query to find the names of employees who have a salary higher than the average salary of all employees.

Write a SQL query to list the employee names and their departments for employees who were hired after the oldest employee in the company.

Write a SQL query to find the details of the employee(s) with the highest salary.

Write a SQL query to find the names of employees who work in the same department as 'John Smith'.

Write a SQL query to find the names of employees who do not belong to the department with the highest average salary.*/








CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    Email NVARCHAR(100) UNIQUE,
    DepartmentID INT,
    HireDate DATE,
    Salary DECIMAL(10, 2)
);


INSERT INTO Employees (EmployeeID, FirstName, LastName, Email, DepartmentID, HireDate, Salary)
VALUES 
(1, 'John', 'Smith', 'john.smith@example.com', 101, '2021-06-15', 75000.00),
(2, 'Jane', 'Doe', 'jane.doe@example.com', 102, '2020-03-10', 85000.00),
(3, 'Michael', 'Johnson', 'michael.johnson@example.com', 101, '2019-11-22', 95000.00),
(4, 'Emily', 'Davis', 'emily.davis@example.com', 103, '2022-01-05', 68000.00),
(5, 'William', 'Brown', 'william.brown@example.com', 102, '2018-07-19', 80000.00);


SELECT * FROM Employees

select avg(salary)from Employees

select HireDate,count(HireDate) as hd from Employees
group by HireDate

select 
  year(HireDate) as [Year]
FROM Employees

SELECT FirstName
from Employees
where HireDate>(select min(HireDate) from Employees)


select * from Employees
where salary=(select max(salary) from Employees)

SELECT * FROM Employees

SELECT FirstName, LastName
FROM Employees
WHERE DepartmentID = (
    SELECT DepartmentID
    FROM Employees
    WHERE FirstName = 'John' AND LastName = 'Smith'
);



select FirstName,DepartmentID,Salary
from Employees
where salary>(select avg(salary) from Employees)


select FirstName,DepartmentID,salary
from Employees
where salary!>(select avg(salary) from Employees)