BeforeExecute
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
	CASE
		WHEN ([o].[Freight] / 10) * 2 = ROUND(([o].[Freight] / 10) * 2, 1) AND [o].[Freight] / 10 <> ROUND([o].[Freight] / 10, 1)
			THEN ROUND(([o].[Freight] / 10) / 2, 1) * 2
		ELSE ROUND([o].[Freight] / 10, 1)
	END = 6.5

