-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[row_1].[Key_1],
	CAST([row_1].[Y2000] AS INTEGER)
FROM
	(
		SELECT
			SUM(CASE
				WHEN [g_1].[Year] = 2000 THEN [g_1].[Amount]
				ELSE NULL
			END) as [Y2000],
			[g_1].[Category] as [Key_1]
		FROM
			[CategorySales] [g_1]
		GROUP BY
			[g_1].[Category]
	) [row_1]
WHERE
	[row_1].[Y2000] IS NOT NULL

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[row_1].[Key_1],
	CAST([row_1].[Y2000] AS INTEGER)
FROM
	(
		SELECT
			SUM(CASE
				WHEN [g_1].[Year] = 2000 THEN [g_1].[Amount]
				ELSE NULL
			END) as [Y2000],
			[g_1].[Category] as [Key_1]
		FROM
			[CategorySales] [g_1]
		GROUP BY
			[g_1].[Category]
	) [row_1]
WHERE
	[row_1].[Y2000] IS NOT NULL

