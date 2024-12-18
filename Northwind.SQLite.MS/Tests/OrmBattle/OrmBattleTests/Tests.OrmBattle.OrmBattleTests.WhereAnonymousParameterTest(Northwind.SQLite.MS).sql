﻿BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite
DECLARE @City NVarChar(7) -- String
SET     @City = 'Seattle'
DECLARE @Region NVarChar(2) -- String
SET     @Region = 'WA'

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
	[o].[ShipCity] = @City AND
	[o].[ShipCity] IS NOT NULL AND
	[o].[ShipRegion] = @Region AND
	[o].[ShipRegion] IS NOT NULL

