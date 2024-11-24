BeforeExecute
-- SqlServer.Northwind.MS SqlServer.2019

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
	CAST(Floor(IIF([o].[Freight] * 10 - FLOOR([o].[Freight] * 10) = 0.5 AND (FLOOR([o].[Freight] * 10) % 2) = 0, FLOOR([o].[Freight] * 10), ROUND([o].[Freight] * 10, 0))) AS Int) = 592

