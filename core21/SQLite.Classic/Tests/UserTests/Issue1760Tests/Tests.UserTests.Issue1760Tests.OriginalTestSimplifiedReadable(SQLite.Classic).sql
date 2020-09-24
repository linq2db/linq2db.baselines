BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE [table1]
(
	[id]            INTEGER  NOT NULL PRIMARY KEY AUTOINCREMENT,
	[id_tbl2]       INTEGER      NULL,
	[id_tbl3]       INTEGER      NULL,
	[commonTableId] INTEGER  NOT NULL,
	[c_tb1l_Id]     INTEGER      NULL
)

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE [table2]
(
	[id]      INTEGER        NOT NULL PRIMARY KEY AUTOINCREMENT,
	[textCol] NVarChar(255)      NULL,
	[col3]    INTEGER            NULL
)

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE [table3]
(
	[id]  INTEGER  NOT NULL PRIMARY KEY AUTOINCREMENT,
	[col] INTEGER      NULL
)

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE [b_table2]
(
	[id]   INTEGER        NOT NULL PRIMARY KEY AUTOINCREMENT,
	[col1] NVarChar(255)      NULL,
	[col2] NVarChar(255)      NULL,
	[col3] NVarChar(255)      NULL
)

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE [c_table2]
(
	[id]          INTEGER        NOT NULL PRIMARY KEY AUTOINCREMENT,
	[col1]        NVarChar(255)      NULL,
	[c_table3_id] INTEGER            NULL
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @id  -- Int32
SET     @id = 0

SELECT
	[t2].[ctb_1],
	[t2].[ctb_2],
	[t2].[ctb_3],
	[t2].[col],
	[t2].[ctb],
	[t2].[col_1]
FROM
	[table1] [t1_1]
		LEFT JOIN [table2] [bt1] ON [t1_1].[c_tb1l_Id] = [bt1].[id]
		LEFT JOIN (
			SELECT
				[btbl].[id] as [ctb],
				[allE].[Id] as [ctb_1],
				[allE].[maxCol] as [ctb_2],
				[tbl3].[id] as [ctb_3],
				[tbl3].[col],
				[btbl].[col] as [col_1]
			FROM
				(
					SELECT
						Max([t1].[c_tb1l_Id]) as [maxCol],
						[t1].[c_tb1l_Id] as [Id]
					FROM
						[table1] [t1]
					GROUP BY
						[t1].[c_tb1l_Id]
				) [allE]
					LEFT JOIN [table3] [tbl3] ON [allE].[maxCol] = [tbl3].[id]
					LEFT JOIN [table3] [btbl] ON ([btbl].[col] IS NULL AND [tbl3].[col] IS NULL OR [btbl].[col] = [tbl3].[col])
		) [t2] ON [bt1].[col3] = [t2].[ctb]
		LEFT JOIN [c_table2] [ctb2] ON ([bt1].[textCol] IS NULL AND [ctb2].[col1] IS NULL OR [bt1].[textCol] = [ctb2].[col1])
WHERE
	[t1_1].[commonTableId] = @id
GROUP BY
	[t2].[ctb_1],
	[t2].[ctb_2],
	[t2].[ctb_3],
	[t2].[ctb],
	[t2].[col],
	[t2].[col_1]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE [c_table2]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE [b_table2]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE [table3]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE [table2]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE [table1]

