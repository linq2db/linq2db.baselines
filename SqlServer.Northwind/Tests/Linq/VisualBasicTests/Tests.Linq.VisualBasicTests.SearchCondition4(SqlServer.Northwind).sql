-- SqlServer.Northwind SqlServer.2019

SELECT
	[order_1].[OrderID]
FROM
	[Orders] [order_1]
WHERE
	[order_1].[OrderDate] = DATETIME2FROMPARTS(1997, 11, 14, 0, 0, 0, 0, 3)

-- SqlServer.Northwind SqlServer.2019

SELECT
	[order_1].[OrderID]
FROM
	[Orders] [order_1]
WHERE
	DATETIME2FROMPARTS(1997, 11, 14, 0, 0, 0, 0, 7) = [order_1].[OrderDate]

