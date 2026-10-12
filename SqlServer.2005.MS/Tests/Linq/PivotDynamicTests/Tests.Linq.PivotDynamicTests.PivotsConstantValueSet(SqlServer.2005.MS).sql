-- SqlServer.2005.MS SqlServer.2005
SELECT
	[g_1].[Category],
	SUM(CASE
		WHEN [g_1].[Year] = 2000 THEN [g_1].[Amount]
		ELSE NULL
	END),
	SUM(CASE
		WHEN [g_1].[Year] = 2010 THEN [g_1].[Amount]
		ELSE NULL
	END)
FROM
	[CategorySales] [g_1]
GROUP BY
	[g_1].[Category]

