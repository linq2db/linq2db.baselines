BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t2].[Id],
	(
		SELECT
			[se].[Value]
		FROM
			[Issue4723Table2] [se]
		WHERE
			[se].[Id] = [t2].[Id]
		LIMIT 1
	),
	[t1].[Association]
FROM
	[Issue4723Table1] [t2]
		LEFT JOIN (
			SELECT
				[a_Association].[Value] as [Association],
				ROW_NUMBER() OVER (PARTITION BY [a_Association].[Id] ORDER BY [a_Association].[Id]) as [rn],
				[a_Association].[Id]
			FROM
				[Issue4723Table2] [a_Association]
		) [t1] ON [t1].[Id] = [t2].[Id] AND [t1].[rn] <= 1

