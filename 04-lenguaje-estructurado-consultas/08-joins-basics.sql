USE NORTHWND
GO
SELECT 
p.ProductID as [numero_producto],
p.ProductName as [nombre_producto],
p.UnitPrice as [precio],
p.UnitsInStock as [existencia],
c.CategoryID as [numero_categoria],
c.CategoryName as [nombre_categoria],
s.CompanyName as [nombre_proveedor],
(p.UnitPrice * p.UnitsInStock) as [valor_inventario]
FROM Products as p
INNER JOIN
Categories as c 
on c.CategoryID = p.CategoryID
INNER JOIN Suppliers as s 
on s.SupplierID = p.SupplierID
WHERE p.UnitsInStock <> 0
AND 
p.ProductName IN('Seafood','Confections','Beverages')
AND
p.ProductName Like 'C%'
ORDER BY [valor_inventario] ASC;

-- SELECCIONAR LOS DATOS DE LOS CLIENTES QUE HAN HECHO PEDIDOS (ORDERS),
-- mostrar el numero del cliente el nombre del cliente (companyName),
-- numero de orden y la fecha de la orden
-- seleccionar ademas del cliente al que se le vendieron los productos
-- queremos saber el nombre del empleado en formato fullname que atendio
-- el pedido

SELECT
c.CustomerID as [numero_cliente],
c.CompanyName as [nombre_cliente],
o.OrderID as [numero_orden],
o.OrderDate as [fecha_orden],
UPPER(FORMAT(o.OrderDate,'MMMM','es-ES')) AS [mes_orden],
UPPER(FORMAT(o.OrderDate,'dddd','es-ES')) AS [dia_orden],
(e.FirstName + ' ' + e.LastName) AS [empleado_fullname]
FROM Customers as c
INNER JOIN Orders as o
on o.CustomerID = c.CustomerID
INNER JOIN Employees as e
on e.EmployeeID = o.EmployeeID
ORDER BY o.OrderDate ASC;