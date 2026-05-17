-- SqlServer.2019

SELECT
	[p].[OrderID],
	DATEDIFF(YEAR, [p].[ShippedDate], [p].[OrderDate]),
	IIF([p].[OrderDate] IS NULL, NULL, DATEDIFF(YEAR, [p].[ShippedDate], [p].[OrderDate])),
	DATEDIFF(MONTH, [p].[ShippedDate], [p].[OrderDate]),
	IIF([p].[OrderDate] IS NULL, NULL, DATEDIFF(MONTH, [p].[ShippedDate], [p].[OrderDate])),
	DATEDIFF(DAY, [p].[ShippedDate], [p].[OrderDate]),
	IIF([p].[OrderDate] IS NULL, NULL, DATEDIFF(DAY, [p].[ShippedDate], [p].[OrderDate])),
	DATEDIFF(HOUR, [p].[ShippedDate], [p].[OrderDate]),
	IIF([p].[OrderDate] IS NULL, NULL, DATEDIFF(HOUR, [p].[ShippedDate], [p].[OrderDate])),
	DATEDIFF(MINUTE, [p].[ShippedDate], [p].[OrderDate]),
	IIF([p].[OrderDate] IS NULL, NULL, DATEDIFF(MINUTE, [p].[ShippedDate], [p].[OrderDate])),
	DATEDIFF(SECOND, [p].[ShippedDate], [p].[OrderDate]),
	IIF([p].[OrderDate] IS NULL, NULL, DATEDIFF(SECOND, [p].[ShippedDate], [p].[OrderDate])),
	DATEDIFF(MILLISECOND, [p].[ShippedDate], DateAdd(millisecond, 100, [p].[ShippedDate])),
	IIF([p].[OrderDate] IS NULL, NULL, DATEDIFF(MILLISECOND, [p].[ShippedDate], DateAdd(millisecond, 100, [p].[ShippedDate])))
FROM
	[Orders] [p]



