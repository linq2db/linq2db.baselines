BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
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

