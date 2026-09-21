-- SqlServer.2022
SELECT DISTINCT
	[x].[Year]
FROM
	[Sales] [x]

-- SqlServer.2022
SELECT
	[g_1].[Category],
	SUM(IIF([g_1].[Year] = 2000, [g_1].[Amount], NULL)),
	SUM(IIF([g_1].[Year] = 2010, [g_1].[Amount], NULL))
FROM
	[Sales] [g_1]
GROUP BY
	[g_1].[Category]

