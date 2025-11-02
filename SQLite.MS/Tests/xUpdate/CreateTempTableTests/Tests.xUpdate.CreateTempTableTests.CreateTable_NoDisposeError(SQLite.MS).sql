-- SQLite.MS SQLite

DROP TABLE IF EXISTS [TempTable]

-- SQLite.MS SQLite

CREATE TEMPORARY TABLE temp.[TempTable]
(
	[ID] INTEGER NOT NULL
)

-- SQLite.MS SQLite

DROP TABLE temp.[TempTable]

-- SQLite.MS SQLite

DROP TABLE IF EXISTS temp.[TempTable]

