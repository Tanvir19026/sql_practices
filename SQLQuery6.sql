


select Concat(FirstName,' ',LastName) as Fullname,Department 
,Salary
from EmployeeRecords where EmployeeID=1

select * from EmployeeRecords where Salary>=75000


select distinct FirstName,Department,Salary from EmployeeRecords where Salary>=75000


select distinct FirstName,Department,Salary from EmployeeRecords where Salary<75000