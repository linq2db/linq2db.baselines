--  SqlServer.2008

SELECT
	[p].[OrderID],
	DATEDIFF(YEAR, [p].[ShippedDate], [p].[OrderDate]),
	CASE
		WHEN [p].[OrderDate] IS NULL THEN NULL
		ELSE DATEDIFF(YEAR, [p].[ShippedDate], [p].[OrderDate])
	END,
	DATEDIFF(MONTH, [p].[ShippedDate], [p].[OrderDate]),
	CASE
		WHEN [p].[OrderDate] IS NULL THEN NULL
		ELSE DATEDIFF(MONTH, [p].[ShippedDate], [p].[OrderDate])
	END,
	DATEDIFF(DAY, [p].[ShippedDate], [p].[OrderDate]),
	CASE
		WHEN [p].[OrderDate] IS NULL THEN NULL
		ELSE DATEDIFF(DAY, [p].[ShippedDate], [p].[OrderDate])
	END,
	DATEDIFF(HOUR, [p].[ShippedDate], [p].[OrderDate]),
	CASE
		WHEN [p].[OrderDate] IS NULL THEN NULL
		ELSE DATEDIFF(HOUR, [p].[ShippedDate], [p].[OrderDate])
	END,
	DATEDIFF(MINUTE, [p].[ShippedDate], [p].[OrderDate]),
	CASE
		WHEN [p].[OrderDate] IS NULL THEN NULL
		ELSE DATEDIFF(MINUTE, [p].[ShippedDate], [p].[OrderDate])
	END,
	DATEDIFF(SECOND, [p].[ShippedDate], [p].[OrderDate]),
	CASE
		WHEN [p].[OrderDate] IS NULL THEN NULL
		ELSE DATEDIFF(SECOND, [p].[ShippedDate], [p].[OrderDate])
	END,
	DATEDIFF(MILLISECOND, [p].[ShippedDate], DateAdd(millisecond, 100, [p].[ShippedDate])),
	CASE
		WHEN [p].[OrderDate] IS NULL THEN NULL
		ELSE DATEDIFF(MILLISECOND, [p].[ShippedDate], DateAdd(millisecond, 100, [p].[ShippedDate]))
	END
FROM
	[Orders] [p]



