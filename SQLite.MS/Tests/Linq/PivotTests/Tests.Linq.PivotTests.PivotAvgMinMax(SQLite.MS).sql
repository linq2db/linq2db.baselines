-- SQLite.MS SQLite
SELECT
	[g_1].[Category],
	CAST(AVG(CASE
		WHEN [g_1].[Year] = 2000 THEN [g_1].[Amount]
		ELSE NULL
	END) AS Float),
	MIN(CASE
		WHEN [g_1].[Year] = 2000 THEN [g_1].[Amount]
		ELSE NULL
	END),
	MAX(CASE
		WHEN [g_1].[Year] = 2000 THEN [g_1].[Amount]
		ELSE NULL
	END)
FROM
	[CategorySales] [g_1]
GROUP BY
	[g_1].[Category]
ORDER BY
	[g_1].[Category]

-- SQLite.MS SQLite
SELECT
	[g_1].[Category],
	CAST(AVG(CASE
		WHEN [g_1].[Year] = 2000 THEN [g_1].[Amount]
		ELSE NULL
	END) AS Float)
FROM
	[CategorySales] [g_1]
GROUP BY
	[g_1].[Category]
ORDER BY
	[g_1].[Category]

