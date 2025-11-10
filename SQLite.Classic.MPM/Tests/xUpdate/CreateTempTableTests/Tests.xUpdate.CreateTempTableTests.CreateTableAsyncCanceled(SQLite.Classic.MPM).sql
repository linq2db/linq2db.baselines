-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [TempTable]

-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[p].[ParentID]
FROM
	[Parent] [p]

-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TEMPORARY TABLE temp.[TempTable]
(
	[ID] INTEGER NOT NULL,

	CONSTRAINT [PK_TempTable] PRIMARY KEY ([ID])
)

-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE [TempTable]

