BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [TempTable]

BeforeExecute
-- SQLite.MS SQLite (asynchronously)

CREATE TEMPORARY TABLE temp.[TempTable]
(
	[ID] INTEGER NOT NULL,

	CONSTRAINT [PK_TempTable] PRIMARY KEY ([ID])
)

BeforeExecute
-- SQLite.MS SQLite (asynchronously)

INSERT INTO temp.[TempTable]
(
	[ID]
)
SELECT
	[p].[ParentID]
FROM
	[Parent] [p]

BeforeExecute
-- SQLite.MS SQLite (asynchronously)

DROP TABLE IF EXISTS temp.[TempTable]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE [TempTable]

