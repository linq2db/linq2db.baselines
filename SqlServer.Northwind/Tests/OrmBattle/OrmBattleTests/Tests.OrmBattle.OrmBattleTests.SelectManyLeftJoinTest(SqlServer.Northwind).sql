﻿BeforeExecute
-- SqlServer.Northwind SqlServer.2019

SELECT
	[c_1].[ContactName],
	[o].[OrderID],
	[c_1].[CompanyName]
FROM
	[Customers] [c_1]
		LEFT JOIN [Orders] [o] ON [c_1].[CustomerID] = [o].[CustomerID] AND [o].[CustomerID] IS NOT NULL

