BeforeExecute
-- SqlServer.Northwind SqlServer.2019
DECLARE @City NVarChar(4000) -- String
SET     @City = N'Seattle'
DECLARE @Region NVarChar(4000) -- String
SET     @Region = N'WA'

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
	[o].[ShipCity] = @City AND [o].[ShipRegion] = @Region

