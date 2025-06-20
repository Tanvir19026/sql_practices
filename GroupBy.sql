

select * from Customer_Info

select count(CustomerID) as [Total Customer],Country
from Customer_Info group by Country


CREATE TABLE Shippers (
    ShipperID INT PRIMARY KEY,
    ShipperName VARCHAR(100),
    Phone VARCHAR(20)
);

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    ShipperID INT,
    FOREIGN KEY (ShipperID) REFERENCES Shippers(ShipperID)
);

INSERT INTO Shippers (ShipperID, ShipperName, Phone) VALUES
(1, 'DHL Express', '123-456-7890'),
(2, 'FedEx Logistics', '234-567-8901'),
(3, 'UPS Worldwide', '345-678-9012');

INSERT INTO Orders (OrderID, CustomerID, OrderDate, ShipperID) VALUES
(101, 1, '2024-05-01', 1),
(102, 2, '2024-05-03', 2),
(103, 1, '2024-05-10', 3),
(104, 3, '2024-06-01', 1),
(105, 2, '2024-06-15', 2);


select * from Orders
select * from Shippers


select CustomerID,Count(CustomerID) as [No of Orders]
from Orders group by CustomerID 
having (count(CustomerID))>1

select Shippers.ShipperName,
count(Orders.OrderID) as [No of Orders]
from Orders
left join Shippers on 
Shippers.ShipperID=Orders.ShipperID
group by Shippers.ShipperName

select orderDate,
count(OrderDate) as [No of Order]
from Orders group by OrderDate

select CustomerID,count(CustomerID) from Orders
group by CustomerID

-- Orders per date
SELECT 
    OrderDate,
    COUNT(OrderID) AS [No of Order]
FROM Orders
GROUP BY OrderDate

UNION ALL

-- Total row
SELECT 
    NULL AS OrderDate,
    COUNT(OrderID) AS [No of Order]
FROM Orders;


SELECT COUNT(CustomerID), Country
FROM Customer_Info
GROUP BY Country
HAVING COUNT(CustomerID) > 5;


select * from Orders
select * from Shippers

select shipperName from Shippers
where exists (select ShipperName='DHL Express not')

select * into customersBackup23025
from Shippers

select Orders.OrderID,Shippers.ShipperName
 into newBackUpTable from Orders
 left join Shippers on
 Orders.ShipperID=Shippers.ShipperID


 select * from newBackUpTable order by ShipperName


 CREATE TABLE Products (
    P_Id INT PRIMARY KEY,
    ProductName VARCHAR(100),
    UnitPrice DECIMAL(10,2),
    UnitsInStock INT,
    UnitsOnOrder INT
);

INSERT INTO Products (P_Id, ProductName, UnitPrice, UnitsInStock, UnitsOnOrder) VALUES
(1, 'Jarlsberg', 10.45, 16, 15),
(2, 'Mascarpone', 32.56, 23, NULL),
(3, 'Gorgonzola', 15.67, 9, 20);


SELECT ProductName, UnitPrice * (UnitsInStock + UnitsOnOrder)
FROM Products;

SELECT ProductName, UnitPrice * (UnitsInStock + COALESCE(UnitsOnOrder, 0))
FROM Products;


CREATE PROCEDURE viewAll
as
select * from Customer_Info
GO;

exec viewAll

create procedure customerInfoCheck 
@CustomerName nvarchar(30)
As
select * from Customer_Info where
CustomerName=@CustomerName
Go

exec customerInfoCheck @CustomerName='Beta Traders';
exec customerInfoCheck @CustomerName='Delta Mart'
select (5*5) as mul

viewAll