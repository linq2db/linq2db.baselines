BeforeExecute
-- Sybase.Managed Sybase

SELECT DISTINCT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value3]
FROM
	(
		SELECT
			[t].[Id],
			[t].[Value1],
			[t].[Value2],
			[t].[Value3]
		FROM
			[SampleData] [t]
		WHERE
			[t].[Id] % 2 = 0
		UNION ALL
		SELECT
			[t_1].[Id],
			[t_1].[Value1],
			[t_1].[Value2],
			[t_1].[Value3]
		FROM
			[SampleData] [t_1]
		WHERE
			[t_1].[Id] % 2 = 0
	) [t1]
WHERE
	NOT EXISTS(
		SELECT
			*
		FROM
			[SampleData] [t_2]
		WHERE
			[t_2].[Id] % 4 = 0 AND
			[t1].[Id] = [t_2].[Id] AND
			[t1].[Value1] = [t_2].[Value1] AND
			[t1].[Value2] = [t_2].[Value2] AND
			[t1].[Value3] = [t_2].[Value3]
	)

