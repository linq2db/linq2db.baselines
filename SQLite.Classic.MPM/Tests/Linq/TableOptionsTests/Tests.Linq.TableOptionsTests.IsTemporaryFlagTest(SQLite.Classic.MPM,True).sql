-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TEMPORARY TABLE temp.[IsTemporaryTable]
(
	[Id]    INTEGER NOT NULL,
	[Value] INTEGER NOT NULL
)

-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	temp.[IsTemporaryTable] [t1]

-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS temp.[IsTemporaryTable]

