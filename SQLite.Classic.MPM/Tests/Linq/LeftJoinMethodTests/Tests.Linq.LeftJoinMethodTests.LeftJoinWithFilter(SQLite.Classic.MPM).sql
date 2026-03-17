-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[c_1].[Name],
	[o].[Name]
FROM
	[Customer] [c_1]
		LEFT JOIN [Order] [o] ON [c_1].[Id] = [o].[CustomerId]
WHERE
	[c_1].[Id] >= 2

-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[Name]
FROM
	[Customer] [t1]

-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[CustomerId],
	[t1].[Name]
FROM
	[Order] [t1]

