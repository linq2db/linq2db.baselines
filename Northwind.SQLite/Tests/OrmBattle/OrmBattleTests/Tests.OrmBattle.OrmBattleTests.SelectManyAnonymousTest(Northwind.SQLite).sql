﻿BeforeExecute
-- Northwind.SQLite SQLite.Classic SQLite

SELECT
	[c_1].[CustomerID],
	[o].[OrderID],
	[o].[Freight]
FROM
	[Customers] [c_1]
		INNER JOIN [Orders] [o] ON [c_1].[CustomerID] = [o].[CustomerID] AND [o].[CustomerID] IS NOT NULL
WHERE
	[o].[Freight] < 500.00

