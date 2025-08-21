--แสดงชื่อประเภทสินค้า ชื่อสินค้า และ ราคาสินค้า

select CategoryName,ProductName,UnitPrice
from Products, Categories
where Products.CategoryID = Categories.CategoryID
order by CategoryName

select CategoryName,ProductName,UnitPrice
from Products JOIN Categories
on Products.CategoryID = Categories.CategoryID

select CategoryName,ProductName,UnitPrice
from Products as p JOIN Categories as c
on P.CategoryID = C.CategoryID

select CompanyName ,OrderID
from  Orders,shippers
where Shippers.shipperID = Orders.shipvia

select CompanyName, OrderID
from Orders  JOIN Shippers
	on shippers.ShipperID = Orders.OrderID

	--ต้องการรหัสสินค้า ชื่อสินค้า บริษัทผู้จำหน่าย ประเทศ

select p.productID,p.productName,s.companyName, s.Country
from Products p JOIN Suppliers s on p.SupplierID = s.SupplierID

select P.ProductID, P.ProductName,s.CompanyName,s.Country
from Products P, Suppliers s where p.SupplierID = s.SupplierID

select CompanyName, OrderID
