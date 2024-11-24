BeforeExecute
-- Northwind.SQLite SQLite.Classic SQLite
DECLARE @p VarChar(23) -- AnsiString
SET     @p = '1997-11-14 00:00:00.000'

SELECT
	[order_1].[OrderID]
FROM
	[Orders] [order_1]
WHERE
	strftime('%Y-%m-%d %H:%M:%f', [order_1].[OrderDate]) = strftime('%Y-%m-%d %H:%M:%f', @p)

BeforeExecute
-- Northwind.SQLite SQLite.Classic SQLite
DECLARE @p VarChar(23) -- AnsiString
SET     @p = '1997-11-14 00:00:00.000'

SELECT
	[order_1].[OrderID]
FROM
	[Orders] [order_1]
WHERE
	strftime('%Y-%m-%d %H:%M:%f', @p) = strftime('%Y-%m-%d %H:%M:%f', [order_1].[OrderDate])

