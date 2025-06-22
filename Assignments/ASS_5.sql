



/*Write a SQL query to select all columns and rows from the Employees table.

Write a SQL query to find the names and email addresses of all employees who work in the department with DepartmentID = 101.

Write a SQL query to find the total number of employees in the Employees table.

Write a SQL query to find the details of employees who were hired in the year 2020.

Write a SQL query to update the salary of 'Jane Doe' to 90,000.*/


select * from Employees_Data

select FirstName,Email from Employees_Data
where DepartmentID=101

select distinct count(EmployeeID) as [Total Employee]
from Employees_data 

select FirstName from Employees_Data
where HireDate>'2020'

update Employees_Data
set salary=90000
where FirstName='Jane'

