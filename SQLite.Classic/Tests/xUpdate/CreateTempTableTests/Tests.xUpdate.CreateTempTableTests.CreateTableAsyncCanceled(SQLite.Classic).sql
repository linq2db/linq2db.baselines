-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [TempTable]

-- SQLite.Classic SQLite

SELECT
	[p].[ParentID]
FROM
	[Parent] [p]

-- SQLite.Classic SQLite

CREATE TEMPORARY TABLE temp.[TempTable]
(
	[ID] INTEGER NOT NULL,

	CONSTRAINT [PK_TempTable] PRIMARY KEY ([ID])
)

-- SQLite.Classic SQLite

DROP TABLE [TempTable]

