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
	Cast(CASE
		WHEN [o].[Freight] * 10 - Floor([o].[Freight] * 10) = 0.5 AND Floor([o].[Freight] * 10) % 2 = 0
			THEN Floor([o].[Freight] * 10)
		ELSE Round([o].[Freight] * 10, 0)
	END as INTEGER) = 592

