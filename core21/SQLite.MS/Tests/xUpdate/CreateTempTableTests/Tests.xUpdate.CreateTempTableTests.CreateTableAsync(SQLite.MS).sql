﻿BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [TempTable]

BeforeExecute
-- SQLite.MS SQLite (asynchronously)

CREATE TABLE [TempTable]
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
-- SQLite.MS SQLite

SELECT
	[t].[ID]
FROM
	[Parent] [p]
		INNER JOIN [TempTable] [t] ON [p].[ParentID] = [t].[ID]

BeforeExecute
-- SQLite.MS SQLite (asynchronously)

DROP TABLE [TempTable]

