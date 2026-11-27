-- SQLite.MS SQLite
SELECT
	CAST([t].[D] AS INTEGER) / 2
FROM
	[DoubleStoredIntegerTable] [t]
ORDER BY
	[t].[Id]

-- SQLite.MS SQLite
SELECT
	[t1].[Id],
	[t1].[D]
FROM
	[DoubleStoredIntegerTable] [t1]

-- SQLite.MS SQLite
SELECT
	[t].[Id]
FROM
	[DoubleStoredIntegerTable] [t]
WHERE
	CAST([t].[D] AS INTEGER) / 2 = -3
ORDER BY
	[t].[Id]

-- SQLite.MS SQLite
SELECT
	[t1].[Id],
	[t1].[D]
FROM
	[DoubleStoredIntegerTable] [t1]

