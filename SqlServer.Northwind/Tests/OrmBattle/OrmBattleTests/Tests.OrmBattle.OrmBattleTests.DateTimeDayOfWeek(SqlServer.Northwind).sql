BeforeExecute
-- SqlServer.Northwind SqlServer.2019
DECLARE @p Int -- Int32
SET     @p = 5

SELECT TOP (1)
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
	(
		SELECT
			DatePart(weekday, [o].[OrderDate]) - 1 as [DayOfWeek],
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
	) [t1]
WHERE
	[t1].[DayOfWeek] = @p

