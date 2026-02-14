-- SQLite.Classic SQLite

SELECT
	[t1].[Id],
	(
		SELECT
			[se].[Value] as [ExpressionMethod]
		FROM
			[Issue4723Table2] [se]
		WHERE
			[se].[Id] = [t1].[Id]
		LIMIT 1
	),
	(
		SELECT
			[a_Association].[Value] as [Association]
		FROM
			[Issue4723Table2] [a_Association]
		WHERE
			[a_Association].[Id] = [t1].[Id]
		LIMIT 1
	)
FROM
	[Issue4723Table1] [t1]

