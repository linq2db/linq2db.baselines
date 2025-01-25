BeforeExecute
-- SqlCe

SELECT
	[t2].[Id],
	[t1].[ExpressionMethod]
FROM
	[Issue4723Table1] [t2]
		OUTER APPLY (
			SELECT TOP (1)
				[se].[Value] as [ExpressionMethod]
			FROM
				[Issue4723Table2] [se]
			WHERE
				[se].[Id] = [t2].[Id]
		) [t1]

