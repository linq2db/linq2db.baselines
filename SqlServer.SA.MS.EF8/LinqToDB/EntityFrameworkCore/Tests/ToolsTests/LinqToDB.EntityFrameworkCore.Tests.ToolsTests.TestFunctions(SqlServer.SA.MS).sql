-- SqlServer.2019

SELECT
	[p].[OrderID],
	DATEDIFF(year, [p].[ShippedDate], [p].[OrderDate]),
	IIF([p].[OrderDate] IS NULL, NULL, DATEDIFF(year, [p].[ShippedDate], [p].[OrderDate])),
	DATEDIFF(month, [p].[ShippedDate], [p].[OrderDate]),
	IIF([p].[OrderDate] IS NULL, NULL, DATEDIFF(month, [p].[ShippedDate], [p].[OrderDate])),
	DATEDIFF(day, [p].[ShippedDate], [p].[OrderDate]),
	IIF([p].[OrderDate] IS NULL, NULL, DATEDIFF(day, [p].[ShippedDate], [p].[OrderDate])),
	DATEDIFF(hour, [p].[ShippedDate], [p].[OrderDate]),
	IIF([p].[OrderDate] IS NULL, NULL, DATEDIFF(hour, [p].[ShippedDate], [p].[OrderDate])),
	DATEDIFF(minute, [p].[ShippedDate], [p].[OrderDate]),
	IIF([p].[OrderDate] IS NULL, NULL, DATEDIFF(minute, [p].[ShippedDate], [p].[OrderDate])),
	DATEDIFF(second, [p].[ShippedDate], [p].[OrderDate]),
	IIF([p].[OrderDate] IS NULL, NULL, DATEDIFF(second, [p].[ShippedDate], [p].[OrderDate])),
	DATEDIFF(millisecond, [p].[ShippedDate], DateAdd(millisecond, 100, [p].[ShippedDate])),
	IIF([p].[OrderDate] IS NULL, NULL, DATEDIFF(millisecond, [p].[ShippedDate], DateAdd(millisecond, 100, [p].[ShippedDate])))
FROM
	[Orders] [p]



