-- Northwind.SQLite SQLite.Classic SQLite

SELECT
	[order_1].[OrderID]
FROM
	[Orders] [order_1]
WHERE
	strftime('%Y-%m-%d %H:%M:%f', [order_1].[OrderDate]) = strftime('%Y-%m-%d %H:%M:%f', '1997-11-14 00:00:00.000')

-- Northwind.SQLite SQLite.Classic SQLite

SELECT
	[order_1].[OrderID]
FROM
	[Orders] [order_1]
WHERE
	strftime('%Y-%m-%d %H:%M:%f', '1997-11-14 00:00:00.000') = strftime('%Y-%m-%d %H:%M:%f', [order_1].[OrderDate])

