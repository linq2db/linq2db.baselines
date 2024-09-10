BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [DynamicParent]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [DynamicParent]
(
	[ID] INTEGER  NOT NULL PRIMARY KEY AUTOINCREMENT
)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [DynamicChild]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [DynamicChild]
(
	[ID]       INTEGER  NOT NULL PRIMARY KEY AUTOINCREMENT,
	[ParentID] INTEGER  NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite (asynchronously)

SELECT
	[it].[ID]
FROM
	[DynamicParent] [it]
		LEFT JOIN [DynamicChild] [a_Child] ON [it].[ID] = [a_Child].[ParentID]
WHERE
	[a_Child].[ID] = 123

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [DynamicChild]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [DynamicParent]

