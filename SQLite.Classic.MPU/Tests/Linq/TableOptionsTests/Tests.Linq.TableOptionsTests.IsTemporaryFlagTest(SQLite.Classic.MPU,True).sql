BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TEMPORARY TABLE temp.[IsTemporaryTable]
(
	[Id]    INTEGER NOT NULL,
	[Value] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	temp.[IsTemporaryTable] [t1]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS temp.[IsTemporaryTable]

