BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [TempTable]

BeforeExecute
-- SQLite.MS SQLite

CREATE TEMPORARY TABLE temp.[TempTable]
(
	[ID] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE temp.[TempTable]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS temp.[TempTable]

