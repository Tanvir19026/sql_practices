
CREATE TABLE Persons (
    Personid INT NOT NULL IDENTITY(1,1),
    LastName VARCHAR(255) NOT NULL,
    FirstName VARCHAR(255),
    Age INT,
    PRIMARY KEY (Personid)
);
INSERT INTO Persons (FirstName,LastName)
VALUES ('Lars','Monsen');

select * from Persons

update Persons
set Age=35
where Age is null

create procedure showData
as
select * from Persons
go;

exec showData

alter table persons
add OrderDate dateTime 

update Persons
set OrderDate=cast(GETDATE() as datetime)
where OrderDate is null


INSERT INTO Persons values(
'Rafi','Tanvir',26,'2025-06-21')

INSERT INTO Persons values(
'hosan','josi',26,'2025-06-21')

create view viewTest as 
select FirstName,Age
from Persons
where age between 20 and 38

select * from viewTest

alter table persons
alter column Age varchar

alter table persons
drop column age

select floor (avg(Price)*100)/100 as [Avg Price]
from Product_Info

select round (avg(Price),2) as [Avg Price]
from Product_Info


select * from Product_Info

select 
iif(avg(Price)>500,'Yes',round(avg(Price),2))
from Product_Info

