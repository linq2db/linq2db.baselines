-- Northwind.SQLite SQLite.Classic SQLite

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
	CAST(CASE
		WHEN [o].[Freight] * 10 - FLOOR([o].[Freight] * 10) = 0.5 AND (FLOOR([o].[Freight] * 10) % 2) = 0
			THEN FLOOR([o].[Freight] * 10)
		ELSE ROUND([o].[Freight] * 10, 0)
	END AS INTEGER) = 592

