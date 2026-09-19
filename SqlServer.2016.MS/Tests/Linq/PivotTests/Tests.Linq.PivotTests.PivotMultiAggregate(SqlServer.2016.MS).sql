-- SqlServer.2016.MS SqlServer.2016
SELECT
	[g_1].[Category],
	SUM(IIF([g_1].[Year] = 2000, [g_1].[Amount], NULL)),
	COUNT(IIF([g_1].[Year] = 2000, 1, NULL))
FROM
	[CategorySales] [g_1]
GROUP BY
	[g_1].[Category]
ORDER BY
	[g_1].[Category]

