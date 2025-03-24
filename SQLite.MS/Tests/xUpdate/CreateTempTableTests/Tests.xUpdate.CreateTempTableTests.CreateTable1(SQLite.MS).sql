﻿BeforeExecute
--  SQLite.MS SQLite

DROP TABLE IF EXISTS [TempTable]

BeforeExecute
--  SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [TempTable]
(
	[ID] INTEGER NOT NULL
)

BeforeExecute
--  SQLite.MS SQLite

INSERT INTO [TempTable]
(
	[ID]
)
SELECT
	[p].[ParentID]
FROM
	[Parent] [p]

BeforeExecute
--  SQLite.MS SQLite

SELECT
	[t1].[ID]
FROM
	[TempTable] [t1]

BeforeExecute
--  SQLite.MS SQLite

SELECT
	[t].[ID]
FROM
	[Parent] [p]
		INNER JOIN [TempTable] [t] ON [p].[ParentID] = [t].[ID]

BeforeExecute
--  SQLite.MS SQLite

DROP TABLE IF EXISTS [TempTable]

