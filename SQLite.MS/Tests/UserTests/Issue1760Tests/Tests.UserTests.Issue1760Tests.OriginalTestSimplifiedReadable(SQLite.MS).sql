BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [table1]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [table1]
(
	[id]            INTEGER  NOT NULL PRIMARY KEY AUTOINCREMENT,
	[id_tbl2]       INTEGER      NULL,
	[id_tbl3]       INTEGER      NULL,
	[commonTableId] INTEGER  NOT NULL,
	[c_tb1l_Id]     INTEGER      NULL
)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [table2]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [table2]
(
	[id]      INTEGER        NOT NULL PRIMARY KEY AUTOINCREMENT,
	[textCol] NVarChar(255)      NULL,
	[col3]    INTEGER            NULL
)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [table3]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [table3]
(
	[id]  INTEGER  NOT NULL PRIMARY KEY AUTOINCREMENT,
	[col] INTEGER      NULL
)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [b_table2]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [b_table2]
(
	[id]   INTEGER        NOT NULL PRIMARY KEY AUTOINCREMENT,
	[col1] NVarChar(255)      NULL,
	[col2] NVarChar(255)      NULL,
	[col3] NVarChar(255)      NULL
)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [c_table2]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [c_table2]
(
	[id]          INTEGER        NOT NULL PRIMARY KEY AUTOINCREMENT,
	[col1]        NVarChar(255)      NULL,
	[c_table3_id] INTEGER            NULL
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @id  -- Int32
SET     @id = 0

SELECT
	[ctb_1].[cond],
	[ctb_1].[Key_1],
	[ctb_1].[maxCol],
	[ctb_1].[Id],
	[ctb_1].[Id_1]
FROM
	[table1] [g_2]
		LEFT JOIN [table2] [bt1] ON [g_2].[c_tb1l_Id] = [bt1].[id]
		LEFT JOIN (
			SELECT
				[ctb].[Key_1],
				[ctb].[maxCol],
				[tbl3].[id] as [Id],
				[btbl].[id] as [Id_1],
				1 as [cond]
			FROM
				(
					SELECT
						MAX([g_1].[c_tb1l_Id]) as [maxCol],
						[g_1].[c_tb1l_Id] as [Key_1]
					FROM
						[table1] [g_1]
					GROUP BY
						[g_1].[c_tb1l_Id]
				) [ctb]
					LEFT JOIN [table3] [tbl3] ON [ctb].[maxCol] = [tbl3].[id]
					LEFT JOIN [table3] [btbl] ON [btbl].[col] = [tbl3].[col] OR [btbl].[col] IS NULL AND [tbl3].[col] IS NULL
		) [ctb_1] ON [bt1].[col3] = [ctb_1].[Id_1] OR [bt1].[col3] IS NULL AND [ctb_1].[Id_1] IS NULL
		LEFT JOIN [c_table2] [ctb2] ON [bt1].[textCol] = [ctb2].[col1] OR [bt1].[textCol] IS NULL AND [ctb2].[col1] IS NULL
WHERE
	[g_2].[commonTableId] = @id
GROUP BY
	[ctb_1].[Key_1],
	[ctb_1].[maxCol],
	[ctb_1].[Id],
	[ctb_1].[Id_1]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [c_table2]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [b_table2]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [table3]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [table2]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [table1]

