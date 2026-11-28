-- SQLite.Classic SQLite
SELECT
	[x].[Category],
	SUM(CASE
		WHEN [x].[Year] = 2000 THEN [x].[Amount]
		ELSE NULL
	END),
	SUM(CASE
		WHEN [x].[Year] = 2010 THEN [x].[Amount]
		ELSE NULL
	END)
FROM
	[Sales] [x]
WHERE
	[x].[Category] = 'A'
GROUP BY
	[x].[Category]
UNION ALL
SELECT
	[x_1].[Category],
	MAX(CASE
		WHEN [x_1].[Year] = 2000 THEN [x_1].[Amount]
		ELSE NULL
	END),
	MAX(CASE
		WHEN [x_1].[Year] = 2010 THEN [x_1].[Amount]
		ELSE NULL
	END)
FROM
	[Sales] [x_1]
WHERE
	[x_1].[Category] = 'B'
GROUP BY
	[x_1].[Category]

