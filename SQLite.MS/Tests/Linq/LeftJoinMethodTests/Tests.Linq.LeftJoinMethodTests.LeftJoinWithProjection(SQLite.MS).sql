-- SQLite.MS SQLite

SELECT
	[x].[Name],
	[o].[Id]
FROM
	[Customer] [x]
		LEFT JOIN [Order] [o] ON [x].[Id] = [o].[CustomerId]

-- SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[Name]
FROM
	[Customer] [t1]

-- SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[CustomerId],
	[t1].[Name]
FROM
	[Order] [t1]

