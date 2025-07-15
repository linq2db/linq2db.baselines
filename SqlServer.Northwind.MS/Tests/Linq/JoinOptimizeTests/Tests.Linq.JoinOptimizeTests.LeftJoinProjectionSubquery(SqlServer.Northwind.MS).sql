BeforeExecute
-- SqlServer.Northwind.MS SqlServer.2019
DECLARE @take Int -- Int32
SET     @take = 10

SELECT
	[t1].[OrderID],
	[t1].[OrderDate],
	[o1_1].[OrderID],
	[o1_1].[OrderID]
FROM
	(
		SELECT TOP (@take)
			[od].[OrderID],
			[o1].[OrderDate]
		FROM
			[Order Details] [od]
				LEFT JOIN [Orders] [o1] ON [o1].[OrderID] = [od].[OrderID]
		ORDER BY
			[od].[OrderID]
	) [t1]
		LEFT JOIN [Orders] [o1_1] ON [o1_1].[OrderID] = [t1].[OrderID]
ORDER BY
	[t1].[OrderID]

BeforeExecute
-- SqlServer.Northwind.MS SqlServer.2019
DECLARE @take Int -- Int32
SET     @take = 10

SELECT
	[v].[OrderID],
	[v].[OrderDate],
	[o1_1].[OrderID],
	[o2].[OrderID]
FROM
	(
		SELECT TOP (@take)
			[od].[OrderID],
			[o1].[OrderDate]
		FROM
			[Order Details] [od]
				LEFT JOIN [Orders] [o1] ON [o1].[OrderID] = [od].[OrderID]
		ORDER BY
			[od].[OrderID]
	) [v]
		LEFT JOIN [Orders] [o1_1] ON [o1_1].[OrderID] = [v].[OrderID]
		LEFT JOIN [Orders] [o2] ON [o2].[OrderID] = [v].[OrderID]
WHERE
	[o1_1].[OrderID] IS NOT NULL
ORDER BY
	[v].[OrderID]

