BeforeExecute
-- Northwind.SQLite SQLite.Classic SQLite

SELECT
	[t1].[CustomerID],
	[t1].[CompanyName],
	[t1].[ContactName],
	[t1].[ContactTitle],
	[t1].[Address],
	[t1].[City],
	[t1].[Region],
	[t1].[PostalCode],
	[t1].[Country],
	[t1].[Phone],
	[t1].[Fax]
FROM
	[Customers] [t1]

BeforeExecute
-- Northwind.SQLite SQLite.Classic SQLite

SELECT
	[t1].[EmployeeID],
	[t1].[LastName],
	[t1].[FirstName],
	[t1].[Title],
	[t1].[TitleOfCourtesy],
	[t1].[BirthDate],
	[t1].[HireDate],
	[t1].[Address],
	[t1].[City],
	[t1].[Region],
	[t1].[PostalCode],
	[t1].[Country],
	[t1].[HomePhone],
	[t1].[Extension],
	[t1].[Photo],
	[t1].[Notes],
	[t1].[ReportsTo],
	[t1].[PhotoPath]
FROM
	[Employees] [t1]

BeforeExecute
-- Northwind.SQLite SQLite.Classic SQLite

SELECT
	[t1].[OrderID],
	[t1].[CustomerID],
	[t1].[EmployeeID],
	[t1].[OrderDate],
	[t1].[RequiredDate],
	[t1].[ShippedDate],
	[t1].[ShipVia],
	[t1].[Freight],
	[t1].[ShipName],
	[t1].[ShipAddress],
	[t1].[ShipCity],
	[t1].[ShipRegion],
	[t1].[ShipPostalCode],
	[t1].[ShipCountry]
FROM
	[Orders] [t1]

BeforeExecute
-- Northwind.SQLite SQLite.Classic SQLite

SELECT
	[t1].[Discontinued],
	[t1].[ProductID],
	[t1].[ProductName],
	[t1].[SupplierID],
	[t1].[CategoryID],
	[t1].[QuantityPerUnit],
	[t1].[UnitPrice],
	[t1].[UnitsInStock],
	[t1].[UnitsOnOrder],
	[t1].[ReorderLevel]
FROM
	[Products] [t1]

BeforeExecute
-- Northwind.SQLite SQLite.Classic SQLite

SELECT
	[o].[OrderID]
FROM
	[Orders] [o]
ORDER BY
	CASE
		WHEN [o].[Freight] > 0 AND [o].[ShippedDate] IS NOT NULL
			THEN 1
		ELSE 0
	END,
	[o].[OrderID]

