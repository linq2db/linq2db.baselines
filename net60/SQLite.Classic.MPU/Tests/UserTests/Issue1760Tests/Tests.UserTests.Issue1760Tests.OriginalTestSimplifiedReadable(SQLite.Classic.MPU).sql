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
	[t4].[ctb],
	[t4].[ctb_1],
	[t4].[ctb_2],
	[t4].[tbl3_1],
	[t4].[ctb_3],
	[t4].[col]
FROM
	(
		SELECT
			[t3].[ctb],
			[t3].[ctb_1],
			[t3].[ctb_2],
			[t3].[ctb_3],
			[t3].[tbl3_1],
			[t3].[col]
		FROM
			(
				SELECT
					[bt1].[textCol],
					[t2].[allE] as [ctb],
					[t2].[allE_1] as [ctb_1],
					[t2].[tbl3] as [ctb_2],
					[t2].[btbl] as [ctb_3],
					[t2].[tbl3_1],
					[t2].[col]
				FROM
					[table1] [t1_1]
						LEFT JOIN [table2] [bt1] ON [t1_1].[c_tb1l_Id] = [bt1].[id]
						LEFT JOIN (
							SELECT
								[btbl].[id] as [btbl],
								[allE].[Id] as [allE],
								[allE].[maxCol] as [allE_1],
								[tbl3].[id] as [tbl3],
								[tbl3].[col] as [tbl3_1],
								[btbl].[col]
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
									LEFT JOIN [table3] [btbl] ON ([btbl].[col] = [tbl3].[col] OR [btbl].[col] IS NULL AND [tbl3].[col] IS NULL)
						) [t2] ON [bt1].[col3] = [t2].[btbl]
				WHERE
					[t1_1].[commonTableId] = @id
			) [t3]
				LEFT JOIN [c_table2] [ctb2] ON ([t3].[textCol] = [ctb2].[col1] OR [t3].[textCol] IS NULL AND [ctb2].[col1] IS NULL)
	) [t4]
GROUP BY
	[t4].[ctb],
	[t4].[ctb_1],
	[t4].[ctb_2],
	[t4].[ctb_3],
	[t4].[tbl3_1],
	[t4].[col]

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

