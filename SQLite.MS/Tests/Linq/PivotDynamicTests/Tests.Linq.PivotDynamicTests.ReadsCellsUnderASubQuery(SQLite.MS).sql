-- SQLite.MS SQLite
SELECT
	[r].[Category]
FROM
	(
		SELECT
			SUM(CASE
				WHEN [g_1].[Year] = 2010 THEN [g_1].[Amount]
				ELSE NULL
			END) as [Y2010],
			[g_1].[Category]
		FROM
			[Sales] [g_1]
		GROUP BY
			[g_1].[Category]
	) [r]
WHERE
	[r].[Y2010] > 16

-- SQLite.MS SQLite
SELECT
	[r].[Category]
FROM
	(
		SELECT
			SUM(CASE
				WHEN [g_1].[Year] = 2010 THEN [g_1].[Amount]
				ELSE NULL
			END) as [Y2010],
			[g_1].[Category]
		FROM
			[Sales] [g_1]
		GROUP BY
			[g_1].[Category]
	) [r]
WHERE
	[r].[Y2010] > 16

-- SQLite.MS SQLite
SELECT
	[r].[Category]
FROM
	(
		SELECT
			SUM(CASE
				WHEN [g_1].[Year] = 2010 THEN [g_1].[Amount]
				ELSE NULL
			END) as [Y2010],
			[g_1].[Category]
		FROM
			[Sales] [g_1]
		GROUP BY
			[g_1].[Category]
	) [r]
WHERE
	[r].[Y2010] > 16

-- SQLite.MS SQLite
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
			[Sales] [g_1]
		GROUP BY
			[g_1].[Category]
	) [row_1]
WHERE
	[row_1].[Y2000] IS NOT NULL

-- SQLite.MS SQLite
SELECT
	[u].[Key_1]
FROM
	(
		SELECT
			CAST([row_1].[Y2000] AS INTEGER) as [Value_1],
			[row_1].[Key_1]
		FROM
			(
				SELECT
					SUM(CASE
						WHEN [g_1].[Year] = 2000 THEN [g_1].[Amount]
						ELSE NULL
					END) as [Y2000],
					[g_1].[Category] as [Key_1]
				FROM
					[Sales] [g_1]
				GROUP BY
					[g_1].[Category]
			) [row_1]
		WHERE
			[row_1].[Y2000] IS NOT NULL
	) [u]
WHERE
	[u].[Value_1] = 10

