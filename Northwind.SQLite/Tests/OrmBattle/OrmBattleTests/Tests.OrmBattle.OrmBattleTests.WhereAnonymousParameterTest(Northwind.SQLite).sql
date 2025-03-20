BeforeExecute
-- Northwind.SQLite SQLite.Classic SQLite
DECLARE @cityRegion_City NVarChar(7) -- String
SET     @cityRegion_City = 'Seattle'
DECLARE @cityRegion_Region NVarChar(2) -- String
SET     @cityRegion_Region = 'WA'

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
	[o].[ShipCity] = @cityRegion_City AND [o].[ShipRegion] = @cityRegion_Region

