-- SQLite.MS SQLite
SELECT
	[r].[Category]
FROM
	[Sales] [r]
GROUP BY
	[r].[Category]
HAVING
	SUM(CASE
		WHEN [r].[Year] = 2010 THEN [r].[Amount]
		ELSE NULL
	END) > 16

-- SQLite.MS SQLite
SELECT
	[r].[Category]
FROM
	[Sales] [r]
GROUP BY
	[r].[Category]
HAVING
	SUM(CASE
		WHEN [r].[Year] = 2010 THEN [r].[Amount]
		ELSE NULL
	END) > 16

