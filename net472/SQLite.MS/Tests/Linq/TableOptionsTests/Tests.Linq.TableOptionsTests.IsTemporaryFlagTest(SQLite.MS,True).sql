BeforeExecute
-- SQLite.MS SQLite

CREATE TEMPORARY TABLE [IsTemporaryTable]
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
	[IsTemporaryTable] [t1]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE [IsTemporaryTable]

