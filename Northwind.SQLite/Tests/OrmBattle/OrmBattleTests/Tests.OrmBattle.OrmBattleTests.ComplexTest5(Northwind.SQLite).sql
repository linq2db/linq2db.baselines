-- Northwind.SQLite SQLite.Classic SQLite

SELECT
	[m_1].[CustomerID],
	[d].[OrderID],
	[d].[CustomerID],
	[d].[EmployeeID],
	[d].[OrderDate],
	[d].[RequiredDate],
	[d].[ShippedDate],
	[d].[ShipVia],
	[d].[Freight],
	[d].[ShipName],
	[d].[ShipAddress],
	[d].[ShipCity],
	[d].[ShipRegion],
	[d].[ShipPostalCode],
	[d].[ShipCountry]
FROM
	[Customers] [m_1]
		INNER JOIN [Orders] [d] ON [m_1].[CustomerID] = [d].[CustomerID]

-- Northwind.SQLite SQLite.Classic SQLite

SELECT
	[i].[CustomerID]
FROM
	[Customers] [i]

