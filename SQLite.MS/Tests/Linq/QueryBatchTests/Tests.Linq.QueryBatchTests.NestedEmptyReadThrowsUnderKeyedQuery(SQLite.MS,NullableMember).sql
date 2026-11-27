-- SQLite.MS SQLite
SELECT
	[t1].[Value_1],
	[t1].[Value_2]
FROM
	[BatchGroup] [g_1]
		LEFT JOIN (
			SELECT
				1 as [Value_1],
				[i].[Value] as [Value_2],
				ROW_NUMBER() OVER (PARTITION BY [i].[GroupId] ORDER BY [i].[GroupId]) as [rn],
				[i].[GroupId]
			FROM
				[BatchItem] [i]
			WHERE
				[i].[Id] > 8
		) [t1] ON [t1].[GroupId] = [g_1].[Id] AND [t1].[rn] = 1
ORDER BY
	[g_1].[Id]

