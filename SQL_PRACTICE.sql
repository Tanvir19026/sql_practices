

select * from [dbo].[Employees_Info]

--insert into table
Insert into Employees_Info
values(19030,'Shorif','Hasan',' Data Scientist',100000,'2025-07-15'),
(19035,'Shovo','Hossain',' Data Analytics',500000,'2025-07-15')


Insert into Employees_Info(EmployeeID,FirstName,Department,Salary)
Values(19027,'Abid','SE',140000)

--department col show
select * from Employees_Info
where Department  =' Data Scientist'

--check null
Select * from Employees_Info
where LastName IS NULL

Select * from Employees_Info
where LastName IS NOT NULL

--upadate
Update Employees_Info
set LastName='Hasan'
Where EmployeeID=19027


update Employees_Info
set HireDate='2025-01-08'
where FirstName='Abid'

--show salary as desc way
select * from [dbo].[Employees_Info]
order by Salary desc

Update Employees_Info
set EmployeeID=19011,Salary=101111,Department='Data Engineer'
where EmployeeID=3

UPDATE Employees_Info
SET Department = 'DS'
WHERE Department = ' Data Scientist';

--Dept er unique rows
SELECT DISTINCT Department FROM Employees_Info;

--group by and count for dept col
Select Department,count(*) as TotalCount
from Employees_Info
group by Department

--unique values from firstname col
select distinct FirstName from Employees_Info

--check not null
select * from Employees_Info
where FirstName is null

select * from Employees_Info
where FirstName is not null

SELECT DEPARTMENT,COUNT(*) AS TOTALCOUNT
from Employees_Info group by Department

--delete
Delete from Employees_Info
where EmployeeID=19027

--data show as desc mannner
select * from [dbo].[Employees_Info]
order by FirstName desc

--col drop
ALTER TABLE Employees_Info
Drop column LastName

--top 3 values show
SELECT TOP 3 * FROM Employees_Info


SELECT TOP 5 * FROM Employees_Info
WHERE Salary BETWEEN 60000 AND 70000

select * from [dbo].[Employees_Info]
order by FirstName desc

--top 3 values of dept of DS
SELECT TOP 3 * FROM Employees_Info
where Department='DS'


--top 3 values of dept
Select Salary,count(*) as SalaryCount
from Employees_Info group by Salary

--least 3 values of dept
select top 3 * from Employees_Info
order by Salary 
--min salary
select top 3 FirstName,Department,Salary as Min_Salary
from Employees_Info
--max salaries
select top 3 * from Employees_Info
order by Salary desc

--max salaries
select top 3 FirstName,Department,Salary as Max_Salary
from Employees_Info
order by Salary desc
