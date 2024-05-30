BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [table1]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [table1]
(
	[id]            INTEGER  NOT NULL PRIMARY KEY AUTOINCREMENT,
	[id_tbl2]       INTEGER      NULL,
	[id_tbl3]       INTEGER      NULL,
	[commonTableId] INTEGER  NOT NULL,
	[c_tb1l_Id]     INTEGER      NULL
)

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [table2]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [table2]
(
	[id]      INTEGER        NOT NULL PRIMARY KEY AUTOINCREMENT,
	[textCol] NVarChar(255)      NULL,
	[col3]    INTEGER            NULL
)

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [table3]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [table3]
(
	[id]  INTEGER  NOT NULL PRIMARY KEY AUTOINCREMENT,
	[col] INTEGER      NULL
)

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[allB].[id]
FROM
	[table1] [allB]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [table3]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [table2]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [table1]

