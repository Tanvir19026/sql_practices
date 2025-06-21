
--Step 1) Create Table
CREATE TABLE EmployeeSales (
    SaleID INT PRIMARY KEY,
    EmployeeID INT,
    Department VARCHAR(50),
    SaleAmount DECIMAL(10, 2),
    SaleDate DATE
);

--Step 2) Insert records into the table
INSERT INTO EmployeeSales (SaleID, EmployeeID, Department, SaleAmount, SaleDate)
VALUES 
(1, 101, 'Electronics', 500.00, '2023-08-01'),
(2, 102, 'Electronics', 300.00, '2023-08-03'),
(3, 101, 'Furniture', 150.00, '2023-08-02'),
(4, 103, 'Electronics', 250.00, '2023-08-04'),
(5, 104, 'Furniture', 200.00, '2023-08-02'),
(6, 101, 'Furniture', 450.00, '2023-08-05'),
(7, 102, 'Electronics', 700.00, '2023-08-05'),
(8, 103, 'Furniture', 100.00, '2023-08-06');

select * from EmployeeSales

select Department,sum(SaleAmount) as [Total sales] from 
EmployeeSales group by Department

select EmployeeID,count(SaleAmount) as [No of Sales],Sum(SaleAmount) as [Total SALES]
from EmployeeSales group by EmployeeID Having count(SaleAmount)>1


SELECT 
    Department,
    ROUND(AVG(SaleAmount), 2) AS [Avg Sales]
FROM 
    EmployeeSales
GROUP BY 
    Department;


select EmployeeID,count(EmployeeID) as [No Of Sales]
from EmployeeSales group by EmployeeID


SELECT COLUMN_NAME
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'EmployeeSales';


select SaleDate,count(SaleDate) as [No of sale],sum(SaleAmount) as [Total Sales]
from EmployeeSales group by SaleDate

select * from EmployeeSales

SELECT 
    YEAR(SaleDate) AS [Year],
    MONTH(SaleDate) AS [Month],
    COUNT(*) AS [No of Sales],
    SUM(SaleAmount) AS [Total Sales]
FROM 
    EmployeeSales
GROUP BY 
    YEAR(SaleDate), MONTH(SaleDate)
ORDER BY 
    YEAR(SaleDate), MONTH(SaleDate);



    SELECT 
    CAST(SaleDate AS DATE) AS SaleDate,
    COUNT(SaleDate) AS [No of Sale],
    SUM(SaleAmount) AS [Total Sales]
FROM 
    EmployeeSales
GROUP BY 
    CAST(SaleDate AS DATE)

UNION ALL

SELECT 
    NULL AS SaleDate,
    COUNT(SaleDate),
    SUM(SaleAmount)
FROM 
    EmployeeSales;

