BeforeExecute
-- SqlServer.Northwind SqlServer.2019

SELECT
	[t1].[ProductID],
	[t1].[ProductName],
	[c_1].[CategoryName]
FROM
	[Categories] [c_1]
		LEFT JOIN (
			SELECT
				[a_Category].[CategoryID] as [p],
				[g_1].[ProductID],
				[g_1].[ProductName]
			FROM
				[Products] [g_1]
					LEFT JOIN [Categories] [a_Category] ON [g_1].[CategoryID] = [a_Category].[CategoryID]
		) [t1] ON [c_1].[CategoryID] = [t1].[p]

