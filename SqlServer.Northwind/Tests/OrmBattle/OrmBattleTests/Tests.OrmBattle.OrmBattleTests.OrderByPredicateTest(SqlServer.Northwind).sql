-- SqlServer.Northwind SqlServer.2019

SELECT
	[o].[OrderID]
FROM
	[Orders] [o]
ORDER BY
	IIF([o].[Freight] > 0 AND [o].[ShippedDate] IS NOT NULL, 1, 0),
	[o].[OrderID]

