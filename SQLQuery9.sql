

select * from [dbo].[EmployeeRecords]



select * from [dbo].[EmployeeRecords] where
not FirstName='John' and not salary=60000

select * from [dbo].[EmployeeRecords]
where not FirstName='Emily'

select * from [dbo].[EmployeeRecords]
where salary >=70000 and salary <100000

select * from [dbo].[EmployeeRecords]
where salary between 70000 and 100000

select * from [dbo].[EmployeeRecords]
where salary not between 70000 and 100000

select * from dbo.EmployeeRecords
where Department = 'HR' or Department = 'IT'

select * from dbo.EmployeeRecords
where Department in('HR','IT')

select * from dbo.EmployeeRecords
where FirstName in('John','Emily')


select distinct Concat(FirstName,'',LastName)  as FullName ,Salary
from dbo.EmployeeRecords 
where salary >=70000 order by salary