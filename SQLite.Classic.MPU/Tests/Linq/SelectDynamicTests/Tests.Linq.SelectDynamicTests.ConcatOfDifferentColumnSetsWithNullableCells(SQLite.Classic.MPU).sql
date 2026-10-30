-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[x].[Id],
	[x].[Usd],
	NULL
FROM
	[Amounts] [x]
WHERE
	[x].[Id] = 1
UNION ALL
SELECT
	[x_1].[Id],
	NULL,
	[x_1].[Usd] * 2
FROM
	[Amounts] [x_1]
WHERE
	[x_1].[Id] = 2

