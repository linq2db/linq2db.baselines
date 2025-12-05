-- Northwind.SQLite SQLite.Classic SQLite

SELECT
	[od].[OrderID],
	[o1].[OrderID],
	CASE
		WHEN [o2].[OrderID] IS NULL THEN 0
		ELSE [o2].[OrderID]
	END,
	CASE
		WHEN [o3].[OrderID] IS NULL THEN 0
		ELSE [o3].[OrderID]
	END,
	CASE
		WHEN [o2].[OrderID] IS NULL THEN 0
		ELSE [o2].[OrderID]
	END
FROM
	[Order Details] [od]
		INNER JOIN [Orders] [o1] ON [od].[OrderID] = [o1].[OrderID] AND [od].[ProductID] = 39
		INNER JOIN [Employees] [e1] ON [o1].[EmployeeID] = [e1].[EmployeeID]
		LEFT JOIN [Orders] [o2] ON [o2].[OrderID] = [od].[OrderID]
		LEFT JOIN [Orders] [o3] ON [o3].[OrderID] = [od].[OrderID] AND [od].[ProductID] = 1
		LEFT JOIN [Orders] [o5] ON [o5].[OrderID] = [od].[OrderID]
WHERE
	[o5].[OrderID] IS NOT NULL AND [o5].[OrderID] > 1000
ORDER BY
	[od].[OrderID]

-- Northwind.SQLite SQLite.Classic SQLite

SELECT
	[t1].[OrderID],
	[t1].[ProductID],
	[t1].[UnitPrice],
	[t1].[Quantity],
	[t1].[Discount]
FROM
	[Order Details] [t1]

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

