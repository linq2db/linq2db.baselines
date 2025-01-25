BeforeExecute
-- SqlCe

SELECT
	[t3].[Id],
	[t1].[ExpressionMethod],
	[t2].[Association]
FROM
	[Issue4723Table1] [t3]
		OUTER APPLY (
			SELECT TOP (1)
				[se].[Value] as [ExpressionMethod]
			FROM
				[Issue4723Table2] [se]
			WHERE
				[se].[Id] = [t3].[Id]
		) [t1]
		OUTER APPLY (
			SELECT TOP (1)
				[a_Association].[Value] as [Association]
			FROM
				[Issue4723Table2] [a_Association]
			WHERE
				[a_Association].[Id] = [t3].[Id]
		) [t2]

