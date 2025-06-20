INSERT INTO Customer_Info (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country) VALUES
(1, 'Alpha Retailers', 'John Smith', '12 Elm St', 'New York', '10001', 'USA'),
(2, 'Beta Traders', 'Sarah Johnson', '45 Oak Ave', 'Los Angeles', '90001', 'USA'),
(3, 'Gamma Supplies', 'David Kim', '67 Pine Rd', 'Chicago', '60601', 'USA'),
(4, 'Delta Mart', 'Maria Garcia', '89 Maple Dr', 'Houston', '77001', 'USA'),
(5, 'Epsilon Corp', 'James Brown', '101 Birch Ln', 'Phoenix', '85001', 'USA'),
(6, 'Zeta Supermarket', 'Emily Davis', '23 Cedar St', 'Dallas', '75201', 'USA'),
(7, 'Eta Wholesale', 'Michael Miller', '345 Spruce Blvd', 'San Diego', '92101', 'USA'),
(8, 'Theta Electronics', 'Olivia Wilson', '89 Redwood Way', 'San Jose', '95101', 'USA'),
(9, 'Iota Clothing', 'William Lee', '12 Cherry Ct', 'Austin', '73301', 'USA'),
(10, 'Kappa Textiles', 'Emma Moore', '66 Aspen Circle', 'Jacksonville', '32099', 'USA'),
(11, 'Lambda Books', 'Noah Taylor', '100 Lakeview Dr', 'San Francisco', '94101', 'USA'),
(12, 'Mu Kitchenware', 'Ava Anderson', '77 Coastal Rd', 'Miami', '33101', 'USA'),
(13, 'Nu Technologies', 'Mason Thomas', '11 Highland St', 'Seattle', '98101', 'USA'),
(14, 'Xi Tools', 'Isabella Martinez', '234 Tech Blvd', 'Denver', '80201', 'USA'),
(15, 'Omicron Media', 'Lucas White', '58 Innovation Pkwy', 'Boston', '02101', 'USA'),
(16, 'Pi Furniture', 'Harper Harris', '7 Walnut Lane', 'Philadelphia', '19101', 'USA'),
(17, 'Rho Lighting', 'Elijah Clark', '17 Brookside Ave', 'Nashville', '37201', 'USA'),
(18, 'Sigma Cosmetics', 'Amelia Lewis', '32 Blossom St', 'Atlanta', '30301', 'USA'),
(19, 'Tau Industries', 'Logan Walker', '89 Mill Rd', 'Charlotte', '28201', 'USA'),
(20, 'Upsilon Motors', 'Mia Hall', '90 Ridge St', 'Detroit', '48201', 'USA'),
(21, 'Phi Auto Parts', 'Ethan Allen', '43 Gear Rd', 'Tampa', '33601', 'USA'),
(22, 'Chi Jewelry', 'Abigail Young', '12 Diamond Ct', 'Orlando', '32801', 'USA'),
(23, 'Psi Office Supplies', 'Benjamin King', '88 Station Ave', 'Cleveland', '44101', 'USA'),
(24, 'Omega Softwares', 'Charlotte Scott', '25 Silicon Blvd', 'Portland', '97201', 'USA'),
(25, 'Nova Imports', 'Henry Turner', '101 Ocean View Dr', 'Honolulu', '96801', 'USA');


select*FROM Customer_Info




SELECT * FROM Customer_Info
WHERE CustomerName IS NULL


SELECT CITY,COUNT(*) [AS TOTAL CITY]
FROM Customer_Info
group by City

Select count(distinct CITY)
from Customer_Info

Select count(distinct country)
from Customer_Info


select customerName
from Customer_Info
where city in('New York','CHicago','Phoenix')

select customerName
from Customer_Info
where city not in('New York','CHicago','Phoenix')

select * from Customer_Info
where CustomerID not in
(select CustomerID from Customer_Info)