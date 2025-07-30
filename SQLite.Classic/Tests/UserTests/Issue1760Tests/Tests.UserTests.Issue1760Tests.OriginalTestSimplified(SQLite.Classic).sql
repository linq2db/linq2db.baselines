BeforeExecute
-- SQLite.Classic SQLite
DECLARE @id  -- Int32
SET     @id = 0

SELECT
	[t1].[cond],
	[t1].[Col3],
	[t1].[Col],
	[t1].[Id]
FROM
	[table1] [s]
		LEFT JOIN [table2] [bt1] ON [s].[c_tb1l_Id] = [bt1].[id]
		LEFT JOIN (
			SELECT
				[ctb].[Col3],
				[tbl3].[col] as [Col],
				[btbl].[id] as [Id],
				1 as [cond]
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
		) [t1] ON [bt1].[col3] = [t1].[Id] OR [bt1].[col3] IS NULL AND [t1].[Id] IS NULL
		LEFT JOIN [c_table2] [ctb2] ON [bt1].[textCol] = [ctb2].[col1] OR [bt1].[textCol] IS NULL AND [ctb2].[col1] IS NULL
WHERE
	[s].[commonTableId] = @id
GROUP BY
	[t1].[Col3],
	[t1].[Col],
	[t1].[Id]

