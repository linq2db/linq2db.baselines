BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [TempTable]

BeforeExecute
-- SQLite.MS SQLite (asynchronously)

CREATE TEMPORARY TABLE [TempTable]
(
	[ID] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite (asynchronously)

INSERT INTO [TempTable]
(
	[ID]
)
SELECT
	[p].[ParentID]
FROM
	[Parent] [p]

BeforeExecute
-- SQLite.MS SQLite (asynchronously)

DROP TABLE [TempTable]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE [TempTable]

