-- SqlServer.2022.MS SqlServer.2022

SELECT
	[t].[Id],
	LAG([t].[IntValue]) OVER (PARTITION BY [t].[CategoryId] ORDER BY [t].[Id])
FROM
	[WindowFunctionTestEntity] [t]

