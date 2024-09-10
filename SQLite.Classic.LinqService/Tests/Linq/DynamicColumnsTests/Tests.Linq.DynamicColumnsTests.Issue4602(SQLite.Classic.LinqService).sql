BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [DynamicParent]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [DynamicParent]
(
	[ID] INTEGER  NOT NULL PRIMARY KEY AUTOINCREMENT
)

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [DynamicChild]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [DynamicChild]
(
	[ID]       INTEGER  NOT NULL PRIMARY KEY AUTOINCREMENT,
	[ParentID] INTEGER  NOT NULL
)

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [DynamicChild]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [DynamicParent]

