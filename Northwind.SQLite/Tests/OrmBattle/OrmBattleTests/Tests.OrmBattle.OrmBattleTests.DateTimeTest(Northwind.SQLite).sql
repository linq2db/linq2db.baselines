﻿BeforeExecute
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
	strftime('%Y-%m-%d %H:%M:%f', [o].[OrderDate]) >= strftime('%Y-%m-%d %H:%M:%f', strftime('%Y-%m-%d %H:%M:%f', printf('%04d', CAST(strftime('%Y', [o].[OrderDate]) AS INTEGER)) || '-01-01 00:00:00.000')) AND
	strftime('%Y-%m-%d %H:%M:%f', [o].[OrderDate]) IS NOT NULL AND
	strftime('%Y-%m-%d %H:%M:%f', strftime('%Y-%m-%d %H:%M:%f', printf('%04d', CAST(strftime('%Y', [o].[OrderDate]) AS INTEGER)) || '-01-01 00:00:00.000')) IS NOT NULL
LIMIT 1

