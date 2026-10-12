-- SqlServer.2017
SELECT
	[g_1].[Category],
	COUNT(IIF([g_1].[Year] = 2000, 1, NULL)),
	COUNT(IIF([g_1].[Year] = 2010, 1, NULL))
FROM
	[StrictSales] [g_1]
GROUP BY
	[g_1].[Category]

