-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [TempTable]

-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TEMPORARY TABLE temp.[TempTable]
(
	[ID] INTEGER NOT NULL
)

-- SQLite.Classic.MPM SQLite.Classic SQLite

INSERT INTO temp.[TempTable]
(
	[ID]
)
SELECT
	[p].[ParentID]
FROM
	[Parent] [p]

-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS temp.[TempTable]

-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE [TempTable]

