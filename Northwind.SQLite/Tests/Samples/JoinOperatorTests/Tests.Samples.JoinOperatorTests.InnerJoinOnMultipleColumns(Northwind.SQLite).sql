﻿BeforeExecute
-- Northwind.SQLite SQLite.Classic SQLite

SELECT
	[t1].[ProductID],
	[o].[OrderID]
FROM
	[Products] [t1],
	[Orders] [o]
		INNER JOIN [Order Details] [d] ON [t1].[ProductID] = [d].[ProductID] AND [o].[OrderID] = [d].[OrderID]

