-- SqlServer.2017
SELECT
	[g_1].[Category],
	CAST(AVG(IIF([g_1].[Year] = 2000, [g_1].[Amount], NULL)) AS Float),
	MIN(IIF([g_1].[Year] = 2000, [g_1].[Amount], NULL)),
	MAX(IIF([g_1].[Year] = 2000, [g_1].[Amount], NULL))
FROM
	[CategorySales] [g_1]
GROUP BY
	[g_1].[Category]
ORDER BY
	[g_1].[Category]

-- SqlServer.2017
SELECT
	[t1].[Category],
	[t1].[2000]
FROM
	[CategorySales] PIVOT (AVG([Amount]) FOR [Year] IN ([2000])) [t1]
ORDER BY
	[t1].[Category]

