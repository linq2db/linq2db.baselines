﻿BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [TempTable]

BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

CREATE TABLE [TempTable]
(
	[ID] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

INSERT INTO [TempTable]
(
	[ID]
)
SELECT
	[p].[ParentID]
FROM
	[Parent] [p]

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t].[ID]
FROM
	[Parent] [p]
		INNER JOIN [TempTable] [t] ON [p].[ParentID] = [t].[ID]

BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

DROP TABLE [TempTable]

