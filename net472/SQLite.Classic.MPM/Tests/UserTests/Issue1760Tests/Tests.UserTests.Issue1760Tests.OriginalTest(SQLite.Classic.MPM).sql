BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE [table1]
(
	[id]            INTEGER  NOT NULL PRIMARY KEY AUTOINCREMENT,
	[id_tbl2]       INTEGER      NULL,
	[id_tbl3]       INTEGER      NULL,
	[commonTableId] INTEGER  NOT NULL,
	[c_tb1l_Id]     INTEGER      NULL
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE [table2]
(
	[id]      INTEGER        NOT NULL PRIMARY KEY AUTOINCREMENT,
	[textCol] NVarChar(255)      NULL,
	[col3]    INTEGER            NULL
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE [table3]
(
	[id]  INTEGER  NOT NULL PRIMARY KEY AUTOINCREMENT,
	[col] INTEGER      NULL
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE [b_table2]
(
	[id]   INTEGER        NOT NULL PRIMARY KEY AUTOINCREMENT,
	[col1] NVarChar(255)      NULL,
	[col2] NVarChar(255)      NULL,
	[col3] NVarChar(255)      NULL
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE [c_table2]
(
	[id]          INTEGER        NOT NULL PRIMARY KEY AUTOINCREMENT,
	[col1]        NVarChar(255)      NULL,
	[c_table3_id] INTEGER            NULL
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @id  -- Int32
SET     @id = 0
DECLARE @id_1  -- Int32
SET     @id_1 = 0

SELECT
	[t1].[textCol],
	[t1].[c1],
	[t1].[c2],
	[t1].[c3]
FROM
	(
		SELECT
			Coalesce([btbl].[col1], '') as [c1],
			Coalesce([btbl].[col2], '') as [c2],
			Coalesce([btbl].[col3], '') as [c3],
			[bt1].[textCol]
		FROM
			[table1] [w_1]
				LEFT JOIN [table2] [bt1] ON [w_1].[c_tb1l_Id] = [bt1].[id]
				LEFT JOIN (
					SELECT
						Max([tbl3].[id]) as [maxCol],
						[tbl2].[col3] as [Col3]
					FROM
						[table1] [w]
							INNER JOIN [table2] [tbl2] ON [w].[id_tbl2] = [tbl2].[id]
							INNER JOIN [table3] [tbl3] ON [w].[id_tbl3] = [tbl3].[id]
					WHERE
						[tbl2].[col3] IS NOT NULL AND [w].[commonTableId] = @id
					GROUP BY
						[tbl2].[col3]
				) [allG] ON ([bt1].[col3] = Coalesce([allG].[Col3], 0) OR [bt1].[col3] IS NULL AND Coalesce([allG].[Col3], 0) IS NULL)
					LEFT JOIN [table3] [tbl3_1] ON [allG].[maxCol] = [tbl3_1].[id]
				LEFT JOIN [b_table2] [btbl] ON [tbl3_1].[col] = [btbl].[id]
				LEFT JOIN [c_table2] [ctb2] ON ([bt1].[textCol] = [ctb2].[col1] OR [bt1].[textCol] IS NULL AND [ctb2].[col1] IS NULL)
		WHERE
			[w_1].[commonTableId] = @id_1
	) [t1]
GROUP BY
	[t1].[c1],
	[t1].[c2],
	[t1].[c3],
	[t1].[textCol]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [c_table2]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [b_table2]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [table3]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [table2]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [table1]

