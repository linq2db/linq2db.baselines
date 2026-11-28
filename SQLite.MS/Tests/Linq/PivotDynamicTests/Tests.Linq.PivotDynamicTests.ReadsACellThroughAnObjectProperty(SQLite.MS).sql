-- SQLite.MS SQLite
SELECT
	[r].[Category],
	SUM(CASE
		WHEN [r].[Year] = 2010 THEN [r].[Amount]
		ELSE NULL
	END)
FROM
	[Sales] [r]
GROUP BY
	[r].[Category]

-- SQLite.MS SQLite
SELECT
	[r].[Category],
	SUM(CASE
		WHEN [r].[Year] = 2010 THEN [r].[Amount]
		ELSE NULL
	END)
FROM
	[Sales] [r]
GROUP BY
	[r].[Category]

-- SQLite.MS SQLite
SELECT
	[r].[Category],
	CAST(SUM(CASE
		WHEN [r].[Year] = 2010 THEN [r].[Amount]
		ELSE NULL
	END) AS INTEGER)
FROM
	[Sales] [r]
GROUP BY
	[r].[Category]

