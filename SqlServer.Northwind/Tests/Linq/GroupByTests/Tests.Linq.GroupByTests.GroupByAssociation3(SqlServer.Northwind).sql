BeforeExecute
-- SqlServer.Northwind SqlServer.2019

SELECT
	[a_Category].[CategoryName]
FROM
	[Products] [g_1]
		LEFT JOIN [Categories] [a_Category] ON [g_1].[CategoryID] = [a_Category].[CategoryID]
GROUP BY
	[a_Category].[CategoryID],
	[a_Category].[CategoryName]
HAVING
	COUNT(*) = 12

