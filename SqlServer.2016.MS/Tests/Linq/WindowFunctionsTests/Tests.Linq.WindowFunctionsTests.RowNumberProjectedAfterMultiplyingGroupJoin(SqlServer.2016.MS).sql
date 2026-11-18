-- SqlServer.2016.MS SqlServer.2016
SELECT
	[t1].[Id],
	[t1].[Rank],
	[o].[Id]
FROM
	(
		SELECT
			[q].[Id],
			ROW_NUMBER() OVER (ORDER BY [q].[Id]) as [Rank],
			[q].[CategoryId]
		FROM
			[WindowFunctionTestEntity] [q]
	) [t1]
		LEFT JOIN [WindowFunctionTestEntity] [o] ON [t1].[CategoryId] = [o].[CategoryId]

