-- SQLite.MS SQLite

DROP TABLE IF EXISTS [TempTable]

-- SQLite.MS SQLite

CREATE TEMPORARY TABLE temp.[TempTable]
(
	[ID] INTEGER NOT NULL,

	CONSTRAINT [PK_TempTable] PRIMARY KEY ([ID])
)

-- SQLite.MS SQLite

DROP TABLE temp.[TempTable]

-- SQLite.MS SQLite

DROP TABLE IF EXISTS temp.[TempTable]

