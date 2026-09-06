-- SqlServer.2025.MS SqlServer.2025
SELECT
	[t_1].[RowNum_1],
	[t_1].[CatRowNum],
	ROW_NUMBER() OVER (PARTITION BY [t_1].[RowNum_1] ORDER BY [t_1].[Id]),
	ROW_NUMBER() OVER (PARTITION BY [t_1].[CatRowNum] ORDER BY [t_1].[Id])
FROM
	(
		SELECT
			ROW_NUMBER() OVER (ORDER BY [t].[Id]) as [RowNum_1],
			ROW_NUMBER() OVER (PARTITION BY [t].[CategoryId] ORDER BY [t].[Id]) as [CatRowNum],
			[t].[Id]
		FROM
			[WindowFunctionTestEntity] [t]
	) [t_1]

