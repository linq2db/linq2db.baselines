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

SELECT
	[bt1].[textCol],
	[t1].[c2],
	[t1].[c3],
	[t1].[c4]
FROM
	[table1] [w_1]
		LEFT JOIN [table2] [bt1] ON [w_1].[c_tb1l_Id] = [bt1].[id]
		LEFT JOIN (
			SELECT
				Coalesce([allG].[Col3], 0) as [c1],
				Coalesce([btbl].[col1], '') as [c2],
				Coalesce([btbl].[col2], '') as [c3],
				Coalesce([btbl].[col3], '') as [c4]
			FROM
				(
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
				) [allG]
					LEFT JOIN [table3] [tbl3_1] ON [allG].[maxCol] = [tbl3_1].[id]
					LEFT JOIN [b_table2] [btbl] ON [tbl3_1].[col] = [btbl].[id]
		) [t1] ON ([bt1].[col3] IS NULL AND [t1].[c1] IS NULL OR [bt1].[col3] = [t1].[c1])
		LEFT JOIN [c_table2] [ctb2] ON ([bt1].[textCol] IS NULL AND [ctb2].[col1] IS NULL OR [bt1].[textCol] = [ctb2].[col1])
WHERE
	[w_1].[commonTableId] = @id
GROUP BY
	[t1].[c2],
	[t1].[c3],
	[t1].[c4],
	[bt1].[textCol]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE [c_table2]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE [b_table2]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE [table3]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE [table2]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE [table1]

