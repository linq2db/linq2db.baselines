﻿BeforeExecute
-- SqlServer.Northwind.MS SqlServer.2019
DECLARE @skip Int -- Int32
SET     @skip = 10
DECLARE @take Int -- Int32
SET     @take = 10

SELECT
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
	[Orders] [t1]
ORDER BY
	[t1].[OrderDate],
	[t1].[OrderID]
OFFSET @skip ROWS FETCH NEXT @take ROWS ONLY 

