

CREATE TABLE EmployeeRecords (
    EmployeeID INT PRIMARY KEY,
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    Department NVARCHAR(50),
    Salary DECIMAL(10, 2)
);


INSERT INTO EmployeeRecords (EmployeeID, FirstName, LastName, Department, Salary)
VALUES
(7, 'Jane', 'Smith', 'Finance', 75000);


select * from EmployeeRecords

select distinct * from EmployeeRecords

select distinct FirstName,LastName from EmployeeRecords

select distinct concat(FirstName,' ',LastName) as [FullName] ,Salary from EmployeeRecords

