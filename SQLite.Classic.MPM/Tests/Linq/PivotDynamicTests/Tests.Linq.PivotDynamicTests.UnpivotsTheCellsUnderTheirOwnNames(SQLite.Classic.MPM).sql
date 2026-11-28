-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[t1].[Key_1],
	CAST('Y2000' AS NVarChar(255)),
	[t1].[Value_1]
FROM
	(
		SELECT
			SUM(CASE
				WHEN [g_1].[Year] = 2000 THEN [g_1].[Amount]
				ELSE NULL
			END) as [Value_1],
			[g_1].[Category] as [Key_1]
		FROM
			[CategorySales] [g_1]
		GROUP BY
			[g_1].[Category]
	) [t1]
WHERE
	[t1].[Value_1] IS NOT NULL
UNION ALL
SELECT
	[t2].[Key_1],
	CAST('Y2010' AS NVarChar(255)),
	[t2].[Y2010]
FROM
	(
		SELECT
			SUM(CASE
				WHEN [g_2].[Year] = 2010 THEN [g_2].[Amount]
				ELSE NULL
			END) as [Y2010],
			[g_2].[Category] as [Key_1]
		FROM
			[CategorySales] [g_2]
		GROUP BY
			[g_2].[Category]
	) [t2]
WHERE
	[t2].[Y2010] IS NOT NULL

