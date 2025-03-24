﻿BeforeExecute
--  SqlServer.Northwind.MS SqlServer.2019

SELECT
	SUM([g_1].[Freight])
FROM
	[Orders] [g_1]
		INNER JOIN [Customers] [a_Customer] ON [g_1].[CustomerID] = [a_Customer].[CustomerID]
GROUP BY
	[a_Customer].[CustomerID]

