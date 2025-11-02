-- SQLite.MS SQLite

DROP TABLE IF EXISTS temp.[TestTable]

-- SQLite.MS SQLite

CREATE TEMPORARY TABLE temp.[TestTable]
(
	[Id]    INTEGER NOT NULL,
	[Value] INTEGER NOT NULL
)

-- SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[Value],
	[t2].[Id],
	[t2].[Value],
	[t3].[Id],
	[t3].[Value]
FROM
	temp.[TestTable] [t1]
		INNER JOIN temp.[TestTable] [t2] ON [t1].[Id] = [t2].[Id]
		INNER JOIN temp.[TestTable] [t3] ON [t2].[Id] = [t3].[Id]

-- SQLite.MS SQLite

DROP TABLE IF EXISTS temp.[TestTable]

