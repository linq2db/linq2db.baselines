-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @id  -- Int32
SET     @id = 0

SELECT
	[bt1].[textCol],
	[t1].[b1],
	[t1].[b2],
	[t1].[b3]
FROM
	[table1] [s]
		LEFT JOIN [table2] [bt1] ON [s].[c_tb1l_Id] = [bt1].[id]
		LEFT JOIN (
			SELECT
				Coalesce([btbl].[col1], '') as [b1],
				Coalesce([btbl].[col2], '') as [b2],
				Coalesce([btbl].[col3], '') as [b3],
				Coalesce([ctb].[Col3], 0) as [c1]
			FROM
				(
					SELECT
						MAX([tbl3].[id]) as [maxCol],
						[tbl2].[col3] as [Col3]
					FROM
						[table1] [w]
							INNER JOIN [table2] [tbl2] ON [w].[id_tbl2] = [tbl2].[id]
							INNER JOIN [table3] [tbl3] ON [w].[id_tbl3] = [tbl3].[id]
					WHERE
						[w].[commonTableId] = @id AND [tbl2].[col3] IS NOT NULL
					GROUP BY
						[tbl2].[col3]
				) [ctb]
					LEFT JOIN [table3] [tbl3_1] ON [ctb].[maxCol] = [tbl3_1].[id]
					LEFT JOIN [b_table2] [btbl] ON [tbl3_1].[col] = [btbl].[id]
		) [t1] ON [bt1].[col3] = [t1].[c1]
		LEFT JOIN [c_table2] [ctb2] ON [bt1].[textCol] = [ctb2].[col1] OR [bt1].[textCol] IS NULL AND [ctb2].[col1] IS NULL
WHERE
	[s].[commonTableId] = @id
GROUP BY
	[t1].[b1],
	[t1].[b2],
	[t1].[b3],
	[bt1].[textCol]

