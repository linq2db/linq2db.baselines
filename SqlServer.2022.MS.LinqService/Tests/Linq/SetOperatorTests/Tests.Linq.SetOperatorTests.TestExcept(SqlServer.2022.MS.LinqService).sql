BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
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
EXCEPT
SELECT
	[t_2].[Id],
	[t_2].[Value1],
	[t_2].[Value2],
	[t_2].[Value3]
FROM
	[SampleData] [t_2]
WHERE
	[t_2].[Id] % 4 = 0

