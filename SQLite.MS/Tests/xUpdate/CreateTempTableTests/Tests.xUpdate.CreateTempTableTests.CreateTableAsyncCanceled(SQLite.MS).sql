BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [TempTable]

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[p].[ParentID]
FROM
	[Parent] [p]

BeforeExecute
-- SQLite.MS SQLite (asynchronously)

CREATE TEMPORARY TABLE temp.[TempTable]
(
	[ID] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE [TempTable]

