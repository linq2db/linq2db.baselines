﻿BeforeExecute
--  SqlServer.Northwind SqlServer.2019

SELECT TOP (1)
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
	[o].[OrderDate] >= DATETIMEFROMPARTS(DatePart(year, [o].[OrderDate]), 1, 1, 0, 0, 0, 0)

