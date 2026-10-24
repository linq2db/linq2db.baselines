-- Northwind.SQLite.MS SQLite.MS SQLite
DECLARE @take  -- Int32
SET     @take = 10

SELECT
	[t1].[OrderID],
	[t1].[OrderDate],
	[o1_1].[OrderID],
	[o1_1].[OrderID]
FROM
	(
		SELECT
			[od].[OrderID],
			[o1].[OrderDate]
		FROM
			[Order Details] [od]
				LEFT JOIN [Orders] [o1] ON [o1].[OrderID] = [od].[OrderID]
		ORDER BY
			[od].[OrderID]
		LIMIT @take
	) [t1]
		LEFT JOIN [Orders] [o1_1] ON [o1_1].[OrderID] = [t1].[OrderID]
ORDER BY
	[t1].[OrderID]

-- Northwind.SQLite.MS SQLite.MS SQLite
DECLARE @take  -- Int32
SET     @take = 10

SELECT
	[v].[OrderID],
	[v].[OrderDate],
	[o1_1].[OrderID],
	[o2].[OrderID]
FROM
	(
		SELECT
			[od].[OrderID],
			[o1].[OrderDate]
		FROM
			[Order Details] [od]
				LEFT JOIN [Orders] [o1] ON [o1].[OrderID] = [od].[OrderID]
		ORDER BY
			[od].[OrderID]
		LIMIT @take
	) [v]
		LEFT JOIN [Orders] [o1_1] ON [o1_1].[OrderID] = [v].[OrderID]
		LEFT JOIN [Orders] [o2] ON [o2].[OrderID] = [v].[OrderID]
WHERE
	[o1_1].[OrderID] IS NOT NULL
ORDER BY
	[v].[OrderID]

