-- Northwind.SQLite.MS SQLite.MS SQLite
SELECT
	[o].[OrderID],
	[o].[CustomerID],
	[o].[EmployeeID],
	[o].[OrderDate],
	[o].[RequiredDate],
	[o].[ShippedDate],
	[o].[ShipVia],
	[o].[Freight],
	[o].[ShipName],
	[o].[ShipAddress],
	[o].[ShipCity],
	[o].[ShipRegion],
	[o].[ShipPostalCode],
	[o].[ShipCountry]
FROM
	[Orders] [o]
WHERE
	CASE
		WHEN (CAST([o].[Freight] AS Float) / 10) * 2 = ROUND((CAST([o].[Freight] AS Float) / 10) * 2, 1) AND CAST([o].[Freight] AS Float) / 10 <> ROUND(CAST([o].[Freight] AS Float) / 10, 1)
			THEN ROUND((CAST([o].[Freight] AS Float) / 10) / 2, 1) * 2
		ELSE ROUND(CAST([o].[Freight] AS Float) / 10, 1)
	END = 6.5

