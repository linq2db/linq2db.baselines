BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

SELECT DISTINCT
	[a_Ref4].[Field6],
	[a_Ref3].[Field4],
	Coalesce([a_Ref5].[Field8], '')
FROM
	[Table1] [t1]
		INNER JOIN [Table3] [a_Ref1] ON [t1].[Field1] = [a_Ref1].[Field1]
		INNER JOIN [Table4] [a_Ref4] ON [a_Ref1].[Field5] = [a_Ref4].[Field5]
		LEFT JOIN [Table2] [a_Ref3] ON [t1].[Field2] = [a_Ref3].[Field2]
		LEFT JOIN [Table5] [a_Ref2] ON [t1].[Field3] = [a_Ref2].[Field3] OR [t1].[Field3] IS NULL AND [a_Ref2].[Field3] IS NULL
		LEFT JOIN [Table6] [a_Ref5] ON [a_Ref2].[Field7] = [a_Ref5].[Field7]
WHERE
	[t1].[Field3] IS NOT NULL

BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

SELECT
	[g_2].[Field6],
	[g_2].[Field4],
	COUNT(*)
FROM
	(
		SELECT DISTINCT
			[a_Ref4].[Field6],
			[a_Ref3].[Field4],
			Coalesce([a_Ref5].[Field8], '') as [Field1]
		FROM
			[Table1] [g_1]
				INNER JOIN [Table3] [a_Ref1] ON [g_1].[Field1] = [a_Ref1].[Field1]
				INNER JOIN [Table4] [a_Ref4] ON [a_Ref1].[Field5] = [a_Ref4].[Field5]
				LEFT JOIN [Table2] [a_Ref3] ON [g_1].[Field2] = [a_Ref3].[Field2]
				LEFT JOIN [Table5] [a_Ref2] ON [g_1].[Field3] = [a_Ref2].[Field3] OR [g_1].[Field3] IS NULL AND [a_Ref2].[Field3] IS NULL
				LEFT JOIN [Table6] [a_Ref5] ON [a_Ref2].[Field7] = [a_Ref5].[Field7]
		WHERE
			[g_1].[Field3] IS NOT NULL
	) [g_2]
GROUP BY
	[g_2].[Field6],
	[g_2].[Field4]
HAVING
	COUNT(*) > 1

