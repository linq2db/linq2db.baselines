--  SqlServer.2008

SELECT
	[p].[OrderID],
	DATEDIFF(year, [p].[ShippedDate], [p].[OrderDate]),
	CASE
		WHEN [p].[OrderDate] IS NULL THEN NULL
		ELSE DATEDIFF(year, [p].[ShippedDate], [p].[OrderDate])
	END,
	DATEDIFF(month, [p].[ShippedDate], [p].[OrderDate]),
	CASE
		WHEN [p].[OrderDate] IS NULL THEN NULL
		ELSE DATEDIFF(month, [p].[ShippedDate], [p].[OrderDate])
	END,
	DATEDIFF(day, [p].[ShippedDate], [p].[OrderDate]),
	CASE
		WHEN [p].[OrderDate] IS NULL THEN NULL
		ELSE DATEDIFF(day, [p].[ShippedDate], [p].[OrderDate])
	END,
	DATEDIFF(hour, [p].[ShippedDate], [p].[OrderDate]),
	CASE
		WHEN [p].[OrderDate] IS NULL THEN NULL
		ELSE DATEDIFF(hour, [p].[ShippedDate], [p].[OrderDate])
	END,
	DATEDIFF(minute, [p].[ShippedDate], [p].[OrderDate]),
	CASE
		WHEN [p].[OrderDate] IS NULL THEN NULL
		ELSE DATEDIFF(minute, [p].[ShippedDate], [p].[OrderDate])
	END,
	DATEDIFF(second, [p].[ShippedDate], [p].[OrderDate]),
	CASE
		WHEN [p].[OrderDate] IS NULL THEN NULL
		ELSE DATEDIFF(second, [p].[ShippedDate], [p].[OrderDate])
	END,
	DATEDIFF(millisecond, [p].[ShippedDate], DateAdd(millisecond, 100, [p].[ShippedDate])),
	CASE
		WHEN [p].[OrderDate] IS NULL THEN NULL
		ELSE DATEDIFF(millisecond, [p].[ShippedDate], DateAdd(millisecond, 100, [p].[ShippedDate]))
	END
FROM
	[Orders] [p]



