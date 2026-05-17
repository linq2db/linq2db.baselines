-- SQLite.MS SQLite

CREATE TEMPORARY TABLE temp.[TestTable]
(
	[Id]    INTEGER NOT NULL,
	[Value] INTEGER NOT NULL,

	CONSTRAINT [PK_TestTable] PRIMARY KEY ([Id])
)

-- SQLite.MS SQLite

DROP TABLE IF EXISTS temp.[TestTable]

