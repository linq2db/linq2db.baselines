BeforeExecute
-- SqlServer.Northwind SqlServer.2019
DECLARE @take Int -- Int32
SET     @take = 10
DECLARE @OrderDate DateTime2
SET     @OrderDate = DATETIME2FROMPARTS(1997, 1, 1, 0, 0, 0, 0, 7)

SELECT TOP (@take)
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
	[o].[OrderDate] > @OrderDate
ORDER BY
	[o].[OrderDate],
	[o].[OrderID]

