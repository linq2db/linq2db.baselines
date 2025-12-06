-- SQLite.Classic SQLite

DROP TABLE IF EXISTS temp.[TestTable]

-- SQLite.Classic SQLite

CREATE TEMPORARY TABLE temp.[TestTable]
(
	[Id]    INTEGER NOT NULL,
	[Value] INTEGER NOT NULL,

	CONSTRAINT [PK_TestTable] PRIMARY KEY ([Id])
)

-- SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[Value],
	[t1].[Id],
	[t1].[Value],
	[t1].[Id],
	[t1].[Value]
FROM
	temp.[TestTable] [t1]

-- SQLite.Classic SQLite

DROP TABLE IF EXISTS temp.[TestTable]

