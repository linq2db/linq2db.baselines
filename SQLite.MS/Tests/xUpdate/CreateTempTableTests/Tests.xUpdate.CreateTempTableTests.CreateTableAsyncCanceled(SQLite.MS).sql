-- SQLite.MS SQLite

DROP TABLE IF EXISTS [TempTable]

-- SQLite.MS SQLite

SELECT
	[p].[ParentID]
FROM
	[Parent] [p]

-- SQLite.MS SQLite

CREATE TEMPORARY TABLE temp.[TempTable]
(
	[ID] INTEGER NOT NULL
)

-- SQLite.MS SQLite

DROP TABLE [TempTable]

