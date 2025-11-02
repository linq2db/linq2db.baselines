-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [TempTable]

-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TEMPORARY TABLE temp.[TempTable]
(
	[ID] INTEGER NOT NULL
)

-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE temp.[TempTable]

-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS temp.[TempTable]

