-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT DISTINCT
	CAST([x].[Amount] AS INTEGER)
FROM
	[CategorySales] [x]
WHERE
	[x].[Year] = 2010

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT DISTINCT
	CAST([x].[Amount] AS INTEGER)
FROM
	[CategorySales] [x]
WHERE
	[x].[Year] = 2010 AND [x].[Category] = 'A'
LIMIT 2

-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @castOfA Integer -- Int32
SET     @castOfA = 20

SELECT
	[x].[Category]
FROM
	[CategorySales] [x]
WHERE
	[x].[Year] = 2010 AND CAST([x].[Amount] AS INTEGER) = @castOfA

-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @castOfA Integer -- Int32
SET     @castOfA = 20

SELECT
	[r].[Category]
FROM
	[CategorySales] [r]
GROUP BY
	[r].[Category]
HAVING
	CAST(SUM(CASE
		WHEN [r].[Year] = 2010 THEN [r].[Amount]
		ELSE NULL
	END) AS INTEGER) = @castOfA

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT DISTINCT
	CAST(SUM(CASE
		WHEN [g_1].[Year] = 2010 THEN [g_1].[Amount]
		ELSE NULL
	END) AS INTEGER)
FROM
	[CategorySales] [g_1]
GROUP BY
	[g_1].[Category]

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

