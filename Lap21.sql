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

--ต้องการรหัสพนักงาน ชื่อพนักงาน รหัสใบสั่งซื้อที่เกี่ยวข้อง เรียงตามลำดับ
select e.EmployeeID,FirstName, OrderID
from Employees as e join Orders as o on e.EmployeeID = o.EmployeeID
order by EmployeeID

--ต้องการรหัสสินค้า เมือง และประเทศของบริษัทผู้จำหน่าย
select ProductID, ProductName, City , Country
from Products p join Suppliers s on p.SupplierID = s.SupplierID

--ต้องการชื่อบริษัทขนส่ง และจำนวนใบสั่งซื้อที่เกี่ยวข้อง
select CompanyName, Count(*)
from orders as o join Shippers as s on o.ShipVia = s.ShipperID
Group by CompanyName

--ต้องการรหัสสินค้า ชื่อสินค้า และจำนวนทั้งหมดที่ขายได้
select p.productID,p.productName,sum(Quantity)
from Products p join [Order Details] od on p.ProductID = od.ProductID
Group by p.ProductID,p.ProductName
order by 1
