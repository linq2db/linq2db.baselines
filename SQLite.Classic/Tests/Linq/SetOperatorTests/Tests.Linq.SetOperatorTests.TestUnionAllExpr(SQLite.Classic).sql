-- SQLite.Classic SQLite

SELECT
	[u_1].[Id],
	[u_1].[Value1],
	[u_1].[Value2],
	[u_1].[Value3]
FROM
	[SampleData] [s]
		INNER JOIN (
			SELECT
				[u].[Id],
				[u].[Value1],
				[u].[Value2],
				[u].[Value3]
			FROM
				[SampleData] [u]
			WHERE
				[u].[Id] % 2 = 0
			UNION ALL
			SELECT
				[t].[Id],
				[t].[Value1],
				[t].[Value2],
				[t].[Value3]
			FROM
				[SampleData] [t]
			WHERE
				[t].[Id] % 4 = 0
		) [u_1] ON [u_1].[Id] = [s].[Id]

