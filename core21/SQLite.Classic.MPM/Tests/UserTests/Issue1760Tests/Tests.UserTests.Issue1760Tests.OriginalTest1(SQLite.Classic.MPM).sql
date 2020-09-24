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

SELECT
	[allB].[id]
FROM
	[table1] [allB]
		LEFT JOIN (
			SELECT
				[allG].[Col3]
			FROM
				(
					SELECT
						Max([tbl1].[id]) as [maxCol],
						[tbl2].[col3] as [Col3]
					FROM
						[table1] [tbl1]
							INNER JOIN [table2] [tbl2] ON [tbl1].[id_tbl2] = [tbl2].[id]
					GROUP BY
						[tbl2].[col3]
				) [allG]
		) [t1] ON [allB].[id] = [t1].[Col3]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE [table3]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE [table2]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE [table1]

