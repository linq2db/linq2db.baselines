BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[x].[Id],
	[t1].[Association]
FROM
	[Issue4723Table1] [x]
		OUTER APPLY (
			SELECT TOP (1)
				[a_Association].[Value] as [Association]
			FROM
				[Issue4723Table2] [a_Association]
			WHERE
				[a_Association].[Id] = [x].[Id]
		) [t1]
WHERE
	[t1].[Association] IS NOT NULL AND ([t1].[Association] <> N'unknown' OR [t1].[Association] IS NULL)

