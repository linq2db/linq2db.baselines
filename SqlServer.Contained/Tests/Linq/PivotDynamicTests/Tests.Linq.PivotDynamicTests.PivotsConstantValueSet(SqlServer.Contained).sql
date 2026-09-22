-- SqlServer.Contained SqlServer.2019
SELECT
	[g_1].[Category],
	SUM(IIF([g_1].[Year] = 2000, [g_1].[Amount], NULL)),
	SUM(IIF([g_1].[Year] = 2010, [g_1].[Amount], NULL))
FROM
	[CategorySales] [g_1]
GROUP BY
	[g_1].[Category]

