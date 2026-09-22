-- SQLite.Classic SQLite
SELECT
	[g_1].[Category],
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

