

select * from EmployeeRecords

select distinct FirstName,Department,Salary from EmployeeRecords 
where Department='HR' or Department='IT'

select distinct FirstName,Department,Salary from EmployeeRecords 
where Department='HR' or Department='Finance'

select distinct FirstName,Department,Salary from EmployeeRecords 
where (Department='HR' or Department='Finance') and Salary>60000