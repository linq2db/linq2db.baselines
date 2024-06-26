﻿BeforeExecute
-- Northwind.SQLite SQLite.Classic SQLite
DECLARE @OrderDate VarChar(23) -- AnsiString
SET     @OrderDate = '1998-01-01 00:00:00.000'

SELECT
	[r].[OrderID],
	[a_Customer].[CustomerID],
	[r].[OrderDate]
FROM
	[Orders] [r]
		INNER JOIN [Customers] [a_Customer] ON [r].[CustomerID] = [a_Customer].[CustomerID]
WHERE
	strftime('%Y-%m-%d %H:%M:%f', [r].[OrderDate]) > strftime('%Y-%m-%d %H:%M:%f', @OrderDate)

