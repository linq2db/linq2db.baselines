-- SqlServer.Contained SqlServer.2019
SELECT
	[t1].[RowNum_1],
	ROW_NUMBER() OVER (PARTITION BY [t1].[RowNum_1] ORDER BY [t1].[Id])
FROM
	(
		SELECT
			ROW_NUMBER() OVER (ORDER BY [t].[Id]) as [RowNum_1],
			[t].[Id]
		FROM
			[WindowFunctionTestEntity] [t]
	) [t1]

