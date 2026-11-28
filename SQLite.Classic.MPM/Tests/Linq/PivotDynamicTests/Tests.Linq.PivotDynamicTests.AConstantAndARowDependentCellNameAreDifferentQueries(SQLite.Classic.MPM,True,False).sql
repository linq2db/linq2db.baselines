-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	SUM(CASE
		WHEN [r].[Year] = 2000 THEN [r].[Amount]
		ELSE NULL
	END),
	SUM(CASE
		WHEN [r].[Year] = 2010 THEN [r].[Amount]
		ELSE NULL
	END)
FROM
	[CategorySales] [r]
GROUP BY
	[r].[Category]

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	SUM(CASE
		WHEN [r].[Year] = 2000 THEN [r].[Amount]
		ELSE NULL
	END),
	SUM(CASE
		WHEN [r].[Year] = 2010 THEN [r].[Amount]
		ELSE NULL
	END),
	CASE
		WHEN [r].[Category] = 'A' THEN 'Y2000'
		ELSE 'Y2010'
	END
FROM
	[CategorySales] [r]
GROUP BY
	[r].[Category]

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	SUM(CASE
		WHEN [r].[Year] = 2000 THEN [r].[Amount]
		ELSE NULL
	END),
	SUM(CASE
		WHEN [r].[Year] = 2010 THEN [r].[Amount]
		ELSE NULL
	END)
FROM
	[CategorySales] [r]
GROUP BY
	[r].[Category]

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	SUM(CASE
		WHEN [r].[Year] = 2000 THEN [r].[Amount]
		ELSE NULL
	END),
	SUM(CASE
		WHEN [r].[Year] = 2010 THEN [r].[Amount]
		ELSE NULL
	END),
	CASE
		WHEN [r].[Category] = 'A' THEN 'Y2000'
		ELSE 'Y2010'
	END
FROM
	[CategorySales] [r]
GROUP BY
	[r].[Category]

