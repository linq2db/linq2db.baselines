-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS temp.[TestTable]

-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TEMPORARY TABLE temp.[TestTable]
(
	[Id]    INTEGER NOT NULL,
	[Value] INTEGER NOT NULL
)

-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[Value],
	[t2].[Id],
	[t2].[Value],
	[t3].[Id],
	[t3].[Value]
FROM
	temp.[TestTable] [t1]
		CROSS JOIN temp.[TestTable] [t2]
		INNER JOIN temp.[TestTable] [t3] ON [t2].[Id] = [t3].[Id]
WHERE
	[t1].[Id] = [t2].[Id]

-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS temp.[TestTable]

