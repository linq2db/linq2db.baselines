-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[r].[Category]
FROM
	[CategorySales] [r]
GROUP BY
	[r].[Category]
HAVING
	SUM(CASE
		WHEN [r].[Year] = 2000 THEN [r].[Amount]
		ELSE NULL
	END) > 12

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[g_1].[Category]
FROM
	[CategorySales] [g_1]
GROUP BY
	[g_1].[Category]
HAVING
	SUM(CASE
		WHEN [g_1].[Year] = 2010 THEN [g_1].[Amount]
		ELSE NULL
	END) > 12
ORDER BY
	[g_1].[Category]

