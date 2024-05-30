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
	IIF(([o].[Freight] / 10) * 2 = Round(([o].[Freight] / 10) * 2, 1) AND [o].[Freight] / 10 <> Round([o].[Freight] / 10, 1), Round(([o].[Freight] / 10) / 2, 1) * 2, Round([o].[Freight] / 10, 1)) = 6.5

