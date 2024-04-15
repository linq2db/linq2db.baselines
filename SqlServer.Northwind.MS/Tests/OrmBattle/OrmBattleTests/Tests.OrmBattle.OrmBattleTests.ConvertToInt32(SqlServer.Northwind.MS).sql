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
	CAST(Floor(IIF([o].[Freight] * 10 - Floor([o].[Freight] * 10) = 0.5 AND Floor([o].[Freight] * 10) % 2 = 0, Floor([o].[Freight] * 10), Round([o].[Freight] * 10, 0))) AS Int) = 592

