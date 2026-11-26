-- SqlServer.2022
SELECT
	SUM(IIF([g_1].[Year] = 2000, [g_1].[Amount], NULL)),
	SUM(IIF([g_1].[Year] = 2010, [g_1].[Amount], NULL)),
	[g_1].[Category],
	SUM(IIF([g_1].[Year] = 2000, [g_1].[Amount] * 2, NULL)),
	SUM(IIF([g_1].[Year] = 2010, [g_1].[Amount] * 2, NULL))
FROM
	[Sales] [g_1]
GROUP BY
	[g_1].[Category]

