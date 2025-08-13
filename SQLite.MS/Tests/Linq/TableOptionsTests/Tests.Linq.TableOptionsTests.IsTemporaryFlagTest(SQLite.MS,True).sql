BeforeExecute
-- SQLite.MS SQLite

CREATE TEMPORARY TABLE temp.[IsTemporaryTable]
(
	[Id]    INTEGER NOT NULL,
	[Value] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	temp.[IsTemporaryTable] [t1]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS temp.[IsTemporaryTable]

