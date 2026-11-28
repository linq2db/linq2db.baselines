-- SQLite.Classic SQLite
SELECT DISTINCT
	CAST([x].[Amount] AS INTEGER)
FROM
	[CategorySales] [x]
WHERE
	[x].[Year] = 2010 AND [x].[Category] = 'A'
LIMIT 2

-- SQLite.Classic SQLite
SELECT
	[t1].[Key_1],
	CAST('Y2000' AS NVarChar(255)),
	CAST([t1].[Y2000] AS INTEGER)
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
	) [t1]
WHERE
	[t1].[Y2000] IS NOT NULL
UNION ALL
SELECT
	[t2].[Key_1],
	CAST('Y2010' AS NVarChar(255)),
	CAST([t2].[Y2010] AS INTEGER)
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

-- SQLite.Classic SQLite
SELECT
	[row_1].[Category],
	CAST(SUM(CASE
		WHEN [row_1].[Year] = 2020 THEN [row_1].[Amount]
		ELSE NULL
	END) AS INTEGER)
FROM
	[CategorySales] [row_1]
GROUP BY
	[row_1].[Category]

-- SQLite.Classic SQLite
SELECT
	[row_1].[Category],
	CAST(SUM(CASE
		WHEN [row_1].[Year] = 2020 THEN [row_1].[Amount]
		ELSE NULL
	END) AS INTEGER)
FROM
	[CategorySales] [row_1]
GROUP BY
	[row_1].[Category]

