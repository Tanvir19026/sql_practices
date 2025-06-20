

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    ContactName VARCHAR(100),
    Country VARCHAR(50)
);


CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);


INSERT INTO Customers(CustomerID, CustomerName, ContactName, Country) VALUES
(1, 'Alpha Retailers', 'John Smith', 'USA'),
(2, 'Beta Traders', 'Sarah Johnson', 'USA'),
(3, 'Gamma Supplies', 'David Kim', 'Canada');



INSERT INTO Orders (OrderID, CustomerID, OrderDate) VALUES
(1001, 1, '2024-05-01'),
(1002, 2, '2024-05-03'),
(1003, 1, '2024-06-10');




select Customers.CustomerID,
Customers.CustomerName,
Orders.OrderID,Orders.OrderDate
from Customers 
inner join Orders
on Customers.CustomerID=Orders.CustomerID



select Customers.ContactName,
Customers.Country,Orders.OrderDate,Orders.OrderID
from Customers
inner join Orders
on Customers.CustomerID=Orders.CustomerID


CREATE TABLE ProductReviews (
    ReviewID INT PRIMARY KEY,
    CustomerID INT,
    ProductName VARCHAR(100),
    ReviewText TEXT,
    Rating INT,
    ReviewDate DATE,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);
INSERT INTO ProductReviews (ReviewID, CustomerID, ProductName, ReviewText, Rating, ReviewDate) VALUES
(1, 1, 'iPhone 14', 'Great phone, fast and sleek.', 5, '2024-05-05'),
(2, 2, 'Galaxy S22', 'Decent but a bit overpriced.', 4, '2024-05-06'),
(3, 1, 'HP Laptop', 'Performance is solid.', 4, '2024-06-15');


select * from Customers
select * from Orders
select * from ProductReviews

select Customers.ContactName,
Customers.Country,Orders.OrderID,
Orders.OrderDate,
ProductReviews.ProductName,ProductReviews.ReviewText
from ((Customers
inner join Orders on 
Customers.CustomerID=Orders.CustomerID)
inner join ProductReviews on
ProductReviews.CustomerID=Customers.CustomerID)


SELECT 
    Customers.ContactName,
    Customers.Country,
    Orders.OrderID,
    Orders.OrderDate,
    ProductReviews.ProductName,
    ProductReviews.ReviewText
FROM Customers
INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID
LEFT JOIN ProductReviews ON ProductReviews.CustomerID = Customers.CustomerID;

select CustomerID,
count(*) as [torder]
from Orders group by CustomerID

select CustomerID,count(*) AS [TCOMMENTS]
from ProductReviews group by
CustomerID



select Customers.ContactName,
Orders.OrderID from Customers
left join Orders on
Customers.CustomerID=Orders.CustomerID


select * from Customers
select * from Orders
select * from ProductReviews


select  Orders.OrderID,Orders.OrderDate,
ProductReviews.ProductName,ProductReviews.ReviewText
from Orders
left join ProductReviews on
Orders.CustomerID=ProductReviews.CustomerID
--where ProductReviews.ProductName='iPhone 14'




SELECT 
    o.OrderID,
    o.OrderDate,
    pr.ProductName,
    pr.ReviewText
FROM Orders o
OUTER APPLY (
    SELECT TOP 1 ProductName, ReviewText
    FROM ProductReviews
    WHERE CustomerID = o.CustomerID
    ORDER BY ReviewDate DESC
) pr;


select Customers.ContactName
,ProductReviews.ProductName
from Customers right join 
ProductReviews on
Customers.CustomerID=ProductReviews.CustomerID

select Customers.ContactName
,ProductReviews.ProductName
from Customers full outer join 
ProductReviews on
Customers.CustomerID=ProductReviews.CustomerID


select Customers.ContactName,Orders.OrderDate
,ProductReviews.ProductName
from 
Customers full outer join ProductReviews on
Customers.CustomerID=ProductReviews.CustomerID
Full outer join Orders on Orders.CustomerID=Customers.CustomerID

select * from Orders
select * from Customers




select cast(OrderDate as varchar(100)) as OrderDate
from Orders
union 
select CustomerName from Customers

select CustomerID from Customers
union ALL select CustomerID from Orders
where CustomerID=1