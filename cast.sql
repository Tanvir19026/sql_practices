

select * from Product_Info

alter table product_info
add Reviews varchar(15) default 'Nice';

UPDATE Product_Info 
SET Reviews = 'Nice' 
WHERE Reviews IS NULL;


create unique index index_values
on product_info(productID)



ALTER TABLE Product_Info 
ADD Reviews VARCHAR(15) CONSTRAINT DF_ProductInfo_Reviews DEFAULT 'Nice';




alter table product_info
drop column Reviews



insert into Product_Info values
(11,'xiomy k20 pro',102,3,120,'Nice Phone')

select cast(supplierID as varchar),count(SupplierID) as [No of Pd]
from Product_Info group by SupplierID
union all
select 'total',count(SupplierID)
from Product_Info


