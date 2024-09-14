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
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [DynamicChild]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [DynamicParent]

