-- Create the table with potential duplicates
CREATE TABLE Employee__Records (
    EmployeeID INT,
    EmployeeName VARCHAR(100),
    ManagerID INT
);


-- Insert data into the table, including duplicates
INSERT INTO Employee__Records (EmployeeID, EmployeeName, ManagerID) VALUES
(1, 'Alice Smith', NULL),
(2, 'Bob Johnson', 1),
(3, 'Carol White', 1),
(4, 'David Brown', 2),
(5, 'Eve Davis', 2),
(6, 'Frank Miller', 3),
(2, 'Bob Johnson', 1),  -- Duplicate entry
(4, 'David Brown', 2);  -- Duplicate entry


select * from Employee__Records
--remove duplicate using Row_number and cte
WITH CTE AS (
    SELECT *,
           row_number() OVER (
               PARTITION BY EmployeeID, EmployeeName, ManagerID
               ORDER BY EmployeeName
           ) AS [duplicate row no]
    FROM Employee__Records
)
SELECT * FROM CTE;

delete from cte where [duplicate row no]=2



---exm 2

-- Create the table with EmployeeID and Email
CREATE TABLE EmployeeRecords_1 (
    EmployeeID INT,
    Email VARCHAR(100)
);


-- Insert data into the table, including duplicates
INSERT INTO EmployeeRecords_1 (EmployeeID, Email) VALUES
(1, 'alice@example.com'),
(2, 'bob@example.com'),
(3, 'carol@example.com'),
(4, 'david@example.com'),
(2, 'bob@example.com'),        -- Duplicate entry (same EmployeeID and Email)
(4, 'david@example.com'),      -- Duplicate entry (same EmployeeID and Email)
(5, 'shared@example.com'),     -- Valid case: Same email, different EmployeeID
(6, 'shared@example.com');     -- Valid case: Same email, different EmployeeID


select * from EmployeeRecords_1 order by Email

select distinct *into #1 from EmployeeRecords_1

truncate table EmployeeRecords_1

insert into EmployeeRecords_1 select * from #1

select * from EmployeeRecords_1 order by email


with cte as(
select *,DENSE_RANK() over(partition by email order by employeeID) [dr] from EmployeeRecords_1)
select * from cte


delete from cte where dr=2

with cte as (
select *, DENSE_RANK() over(partition by email order by employeeid desc) [DR] from employeerecords_2
)
--select * from ce