-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[r].[Id]
FROM
	[QuarterlySales] [r]
WHERE
	[r].[Q1] IS NOT NULL

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[r].[Id]
FROM
	[QuarterlySales] [r]
WHERE
	[r].[Q1] IS NOT NULL

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[r].[Id]
FROM
	[QuarterlySales] [r]
WHERE
	[r].[Q2] IS NOT NULL

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[r].[Id]
FROM
	[QuarterlySales] [r]
WHERE
	[r].[Q1] IS NOT NULL
UNION ALL
SELECT
	[row_1].[Id]
FROM
	[QuarterlySales] [row_1]
WHERE
	[row_1].[Q2] IS NOT NULL

