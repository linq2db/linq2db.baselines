-- SqlServer.2019

SELECT
	[p].[OrderID],
	DateDiff(year, [p].[ShippedDate], [p].[OrderDate]),
	IIF([p].[OrderDate] IS NULL, NULL, DateDiff(year, [p].[ShippedDate], [p].[OrderDate])),
	DateDiff(month, [p].[ShippedDate], [p].[OrderDate]),
	IIF([p].[OrderDate] IS NULL, NULL, DateDiff(month, [p].[ShippedDate], [p].[OrderDate])),
	DateDiff(day, [p].[ShippedDate], [p].[OrderDate]),
	IIF([p].[OrderDate] IS NULL, NULL, DateDiff(day, [p].[ShippedDate], [p].[OrderDate])),
	DateDiff(hour, [p].[ShippedDate], [p].[OrderDate]),
	IIF([p].[OrderDate] IS NULL, NULL, DateDiff(hour, [p].[ShippedDate], [p].[OrderDate])),
	DateDiff(minute, [p].[ShippedDate], [p].[OrderDate]),
	IIF([p].[OrderDate] IS NULL, NULL, DateDiff(minute, [p].[ShippedDate], [p].[OrderDate])),
	DateDiff(second, [p].[ShippedDate], [p].[OrderDate]),
	IIF([p].[OrderDate] IS NULL, NULL, DateDiff(second, [p].[ShippedDate], [p].[OrderDate])),
	DateDiff(millisecond, [p].[ShippedDate], DateAdd(millisecond, 100, [p].[ShippedDate])),
	IIF([p].[OrderDate] IS NULL, NULL, DateDiff(millisecond, [p].[ShippedDate], DateAdd(millisecond, 100, [p].[ShippedDate])))
FROM
	[Orders] [p]



