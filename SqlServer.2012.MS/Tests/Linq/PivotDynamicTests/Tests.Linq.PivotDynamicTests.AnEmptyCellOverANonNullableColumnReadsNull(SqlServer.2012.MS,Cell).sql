-- SqlServer.2012.MS SqlServer.2012
SELECT
	[g_1].[Category],
	SUM(IIF([g_1].[Year] = 2000, [g_1].[Amount], NULL)),
	SUM(IIF([g_1].[Year] = 2010, [g_1].[Amount], NULL)),
	MAX(IIF([g_1].[Year] = 2000, [g_1].[At], NULL)),
	MAX(IIF([g_1].[Year] = 2010, [g_1].[At], NULL))
FROM
	[StrictSales] [g_1]
GROUP BY
	[g_1].[Category]

