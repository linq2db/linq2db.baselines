﻿BeforeExecute
BeginTransaction(Serializable)
BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite

SELECT
	[m_1].[OrderDate],
	[d].[OrderID],
	[d].[CustomerID],
	[d].[EmployeeID],
	[d].[OrderDate],
	[d].[RequiredDate],
	[d].[ShippedDate],
	[d].[ShipVia],
	[d].[Freight],
	[d].[ShipName],
	[d].[ShipAddress],
	[d].[ShipCity],
	[d].[ShipRegion],
	[d].[ShipPostalCode],
	[d].[ShipCountry]
FROM
	(
		SELECT DISTINCT
			[t1].[OrderDate]
		FROM
			[Orders] [t1]
	) [m_1]
		INNER JOIN [Orders] [d] ON (strftime('%Y-%m-%d %H:%M:%f', [m_1].[OrderDate]) = strftime('%Y-%m-%d %H:%M:%f', [d].[OrderDate]) OR [m_1].[OrderDate] IS NULL AND [d].[OrderDate] IS NULL)

BeforeExecute
DisposeTransaction
BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite

SELECT
	[t1].[OrderDate]
FROM
	[Orders] [t1]
GROUP BY
	[t1].[OrderDate]

