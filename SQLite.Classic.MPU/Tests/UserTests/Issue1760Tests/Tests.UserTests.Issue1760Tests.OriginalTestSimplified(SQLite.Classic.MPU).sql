BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [table1]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [table1]
(
	[id]            INTEGER  NOT NULL PRIMARY KEY AUTOINCREMENT,
	[id_tbl2]       INTEGER      NULL,
	[id_tbl3]       INTEGER      NULL,
	[commonTableId] INTEGER  NOT NULL,
	[c_tb1l_Id]     INTEGER      NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [table2]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [table2]
(
	[id]      INTEGER        NOT NULL PRIMARY KEY AUTOINCREMENT,
	[textCol] NVarChar(255)      NULL,
	[col3]    INTEGER            NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [table3]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [table3]
(
	[id]  INTEGER  NOT NULL PRIMARY KEY AUTOINCREMENT,
	[col] INTEGER      NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [b_table2]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [b_table2]
(
	[id]   INTEGER        NOT NULL PRIMARY KEY AUTOINCREMENT,
	[col1] NVarChar(255)      NULL,
	[col2] NVarChar(255)      NULL,
	[col3] NVarChar(255)      NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [c_table2]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [c_table2]
(
	[id]          INTEGER        NOT NULL PRIMARY KEY AUTOINCREMENT,
	[col1]        NVarChar(255)      NULL,
	[c_table3_id] INTEGER            NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @id  -- Int32
SET     @id = 0

SELECT
	[t1].[not_null],
	[t1].[Col3],
	[t1].[Col],
	[t1].[Id]
FROM
	[table1] [s]
		LEFT JOIN [table2] [bt1] ON [s].[c_tb1l_Id] = [bt1].[id]
		LEFT JOIN (
			SELECT
				[btbl].[id] as [Id],
				[ctb].[Col3],
				[tbl3].[col] as [Col],
				1 as [not_null]
			FROM
				(
					SELECT
						MAX([w].[c_tb1l_Id]) as [maxCol],
						[w].[c_tb1l_Id] as [Col3]
					FROM
						[table1] [w]
					GROUP BY
						[w].[c_tb1l_Id]
				) [ctb]
					LEFT JOIN [table3] [tbl3] ON [ctb].[maxCol] = [tbl3].[id]
					LEFT JOIN [b_table2] [btbl] ON [tbl3].[col] = [btbl].[id]
		) [t1] ON ([bt1].[col3] = [t1].[Id] OR [bt1].[col3] IS NULL AND [t1].[Id] IS NULL)
		LEFT JOIN [c_table2] [ctb2] ON ([bt1].[textCol] = [ctb2].[col1] OR [bt1].[textCol] IS NULL AND [ctb2].[col1] IS NULL)
WHERE
	[s].[commonTableId] = @id
GROUP BY
	[t1].[Col3],
	[t1].[Col],
	[t1].[Id]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [c_table2]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [b_table2]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [table3]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [table2]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [table1]

