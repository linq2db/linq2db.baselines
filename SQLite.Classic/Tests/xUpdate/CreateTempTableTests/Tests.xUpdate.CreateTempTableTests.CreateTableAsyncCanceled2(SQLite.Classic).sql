BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [TempTable]

BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

CREATE TEMPORARY TABLE temp.[TempTable]
(
	[ID] INTEGER NOT NULL,

	CONSTRAINT [PK_TempTable] PRIMARY KEY ([ID])
)

BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

INSERT INTO temp.[TempTable]
(
	[ID]
)
SELECT
	[p].[ParentID]
FROM
	[Parent] [p]

BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

DROP TABLE IF EXISTS temp.[TempTable]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE [TempTable]

