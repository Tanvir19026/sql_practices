

select * from Employees_Info

select distinct salary from Employees_Info order by Salary desc

--normal querey 2nd
select max(salary) [2nd max salary] from Employees_Info where salary <
(select max(salary)[Max Salary] from Employees_Info)


--3rd max salary 


select max(salary) [3rd max salary] from Employees_Info where salary<(
select max(salary) [2nd max salary] from Employees_Info where salary <
(select max(salary)[Max Salary] from Employees_Info))


--using CTE
with cte as(
select *,DENSE_RANK() OVER(order by salary desc)[DR] from Employees_Info
)
select salary [2nd Highest Salary] from cte where DR = 2


with cte as(
select *,DENSE_RANK() OVER(ORDER BY SALARY DESC) [DR] FROM Employees_Info
)
SELECT DISTINCT SALARY [3RD Highest Salary] FROM CTE WHERE DR=3



--Sub Query along with Dense_Rank()

select salary as [2nd max] from
(select *,DENSE_RANK() over(order by Salary desc)[DR] from Employees_Info) X
where DR=2


select distinct salary as[3rd max] from 
(select *,DENSE_RANK() OVER(order by Salary desc)[DR] FROM Employees_Info)x
where DR=3

--Sub Query

select top 1 salary [2nd highest salary] from
(select top 2 salary from Employees_Info order by Salary desc)x
order by Salary asc

