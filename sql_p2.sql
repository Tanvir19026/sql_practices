



INSERT INTO Product_Info (ProductID, ProductName, SupplierID, CategoryID, Price) VALUES
(1, 'Apple iPhone 14', 101, 1, 999.99),
(2, 'Samsung Galaxy S22', 102, 1, 899.50),
(3, 'HP Pavilion Laptop', 103, 2, 749.00),
(4, 'Sony Headphones', 104, 3, 199.99),
(5, 'Dell Monitor 24"', 103, 2, 189.00),
(6, 'Logitech Mouse', 105, 3, 29.99),
(7, 'Canon DSLR Camera', 106, 4, 599.00),
(8, 'Xiaomi Power Bank', 102, 5, 39.99),
(9, 'JBL Bluetooth Speaker', 104, 3, 129.00),
(10, 'Lenovo ThinkPad', 103, 2, 849.99);


ALter Table Product_Info
ALTER COLUMN ProductName varchar(100)


SELECT COLUMN_NAME
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'Product_Info';

SELECT * FROM Product_Info


select ProductName, Price
from Product_Info
where Price=(Select min(Price)from Product_Info)

select ProductName,Price
from Product_Info
where Price=(select max(Price) from Product_Info)

select * from Product_Info
where Price is null
or ProductID is null

select max(Price) as SmallestPrice,CategoryID
from Product_Info
group by CategoryID


select min(Price) as SmallestPrice,ProductName,Price
from Product_Info
group by Price


SELECT ProductName, Price
FROM Product_Info
order by Price;


select count(*) as total_pd
from Product_Info

select ProductName,count(*) as Total_Pd
from Product_Info group by ProductName


select count(ProductID)
from Product_Info
where Price>300

select count(Distinct Price)
from Product_Info

select count(*) as[Number of pd]
from Product_Info

select count(*)
from Product_Info


select Count(*) as [Number of pd],CategoryID
from Product_Info
group by CategoryID

select COUNT(*) as [Number of pd],ProductName
from Product_Info
group by(ProductName)


select * from Product_Info

select count(SupplierID) as [TP]
FROM Product_Info

Select count(*) as [TP],SupplierID
from Product_Info
Group by(SupplierID)

select SupplierID,count (SupplierID)
from Product_Info group by (SupplierID)


select sum(price) as [Sum of the Price]
from Product_Info


select SupplierID,
count(*) as [TP],
sum(price) as [TPrice]
from Product_Info
group by(SupplierID)




SELECT 
  ISNULL(CAST(SupplierID AS VARCHAR), 'Grand Total') AS SupplierID,
  COUNT(*) AS [TP],
  SUM(Price) AS [TPrice]
FROM Product_Info
GROUP BY ROLLUP(SupplierID);



select * from Product_Info


select SupplierID,sum(price) as [tp]
from Product_Info
group by SupplierID


select SupplierID,sum(price * 5)
from Product_Info group by SupplierID

select avg(Price)
from Product_Info

select ProductName,avg(price) as[AVG Price]
from Product_Info
group by ProductName

select * from Product_Info
where price>(select avg(Price) from Product_Info)

--start with a 
select * from Product_Info
where ProductName Like 'a%'

--if b char in product
select * from Product_Info
where ProductName Like '%b%'

select * from Product_Info
where ProductName Like 'a%' or ProductName='c%'

--end with b
select * from Product_Info
where ProductName Like '%p'

--combine start and end

select * from Product_Info
where ProductName like 'H%p'

select * from Product_Info
where ProductName like 'Apple%'



