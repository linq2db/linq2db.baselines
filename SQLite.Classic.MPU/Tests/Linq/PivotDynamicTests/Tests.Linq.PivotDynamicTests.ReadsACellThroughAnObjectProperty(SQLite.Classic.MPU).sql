-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	SUM(CASE
		WHEN [r].[Year] = 2010 THEN [r].[Amount]
		ELSE NULL
	END)
FROM
	[Sales] [r]
GROUP BY
	[r].[Category]

-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	SUM(CASE
		WHEN [r].[Year] = 2010 THEN [r].[Amount]
		ELSE NULL
	END)
FROM
	[Sales] [r]
GROUP BY
	[r].[Category]

-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	CAST(SUM(CASE
		WHEN [r].[Year] = 2010 THEN [r].[Amount]
		ELSE NULL
	END) AS INTEGER)
FROM
	[Sales] [r]
GROUP BY
	[r].[Category]

