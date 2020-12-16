BeforeExecute
-- Northwind SqlServer.2017

SELECT
	[t1].[Fax],
	[t1].[Phone],
	[t1].[Country],
	[t1].[PostalCode],
	[t1].[Region],
	[t1].[City],
	[t1].[Address],
	[t1].[ContactTitle],
	[t1].[ContactName],
	[t1].[CompanyName],
	[t1].[CustomerID]
FROM
	[Customers] [t1]

BeforeExecute
-- Northwind SqlServer.2017

SELECT
	[t1].[PhotoPath],
	[t1].[ReportsTo],
	[t1].[Notes],
	[t1].[Photo],
	[t1].[Extension],
	[t1].[HomePhone],
	[t1].[Country],
	[t1].[PostalCode],
	[t1].[Region],
	[t1].[City],
	[t1].[Address],
	[t1].[HireDate],
	[t1].[BirthDate],
	[t1].[TitleOfCourtesy],
	[t1].[Title],
	[t1].[FirstName],
	[t1].[LastName],
	[t1].[EmployeeID]
FROM
	[Employees] [t1]

BeforeExecute
-- Northwind SqlServer.2017

SELECT
	[t1].[ShipCountry],
	[t1].[ShipPostalCode],
	[t1].[ShipRegion],
	[t1].[ShipCity],
	[t1].[ShipAddress],
	[t1].[ShipName],
	[t1].[Freight],
	[t1].[ShipVia],
	[t1].[ShippedDate],
	[t1].[RequiredDate],
	[t1].[OrderDate],
	[t1].[EmployeeID],
	[t1].[CustomerID],
	[t1].[OrderID]
FROM
	[Orders] [t1]

BeforeExecute
-- Northwind SqlServer.2017

SELECT
	[t1].[ProductID],
	[t1].[ProductName],
	[t1].[SupplierID],
	[t1].[CategoryID],
	[t1].[QuantityPerUnit],
	[t1].[UnitPrice],
	[t1].[UnitsInStock],
	[t1].[UnitsOnOrder],
	[t1].[ReorderLevel],
	[t1].[Discontinued]
FROM
	[Products] [t1]

BeforeExecute
-- Northwind SqlServer.2017
DECLARE @take Int -- Int32
SET     @take = 1

SELECT
	[p].[ProductID],
	[t1].[ShipCountry],
	[t1].[ShipPostalCode],
	[t1].[ShipRegion],
	[t1].[ShipCity],
	[t1].[ShipAddress],
	[t1].[ShipName],
	[t1].[Freight],
	[t1].[ShipVia],
	[t1].[ShippedDate],
	[t1].[RequiredDate],
	[t1].[OrderDate],
	[t1].[EmployeeID],
	[t1].[CustomerID],
	[t1].[OrderID]
FROM
	[Products] [p]
		OUTER APPLY (
			SELECT TOP (@take)
				[a_Order].[ShipCountry],
				[a_Order].[ShipPostalCode],
				[a_Order].[ShipRegion],
				[a_Order].[ShipCity],
				[a_Order].[ShipAddress],
				[a_Order].[ShipName],
				[a_Order].[Freight],
				[a_Order].[ShipVia],
				[a_Order].[ShippedDate],
				[a_Order].[RequiredDate],
				[a_Order].[OrderDate],
				[a_Order].[EmployeeID],
				[a_Order].[CustomerID],
				[a_Order].[OrderID]
			FROM
				[Order Details] [od]
					LEFT JOIN [Products] [a_Product] ON [od].[ProductID] = [a_Product].[ProductID]
					LEFT JOIN [Orders] [a_Order] ON [od].[OrderID] = [a_Order].[OrderID]
			WHERE
				[a_Product].[ProductID] = [p].[ProductID]
			ORDER BY
				[od].[UnitPrice] * [od].[Quantity] DESC
		) [t1]

