BeforeExecute
-- SqlServer.Northwind.MS SqlServer.2019

SELECT
	[a_Category].[CategoryName]
FROM
	[Products] [g_1]
		LEFT JOIN [Categories] [a_Category] ON ([g_1].[CategoryID] = [a_Category].[CategoryID] OR [g_1].[CategoryID] IS NULL AND [a_Category].[CategoryID] IS NULL)
GROUP BY
	[a_Category].[CategoryID],
	[a_Category].[CategoryName]
HAVING
	(Count(*) = 12)

