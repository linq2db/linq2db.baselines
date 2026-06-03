-- SqlServer.2025

SELECT
	[t].[Id],
	LAG([t].[IntValue]) IGNORE NULLS OVER (PARTITION BY [t].[CategoryId] ORDER BY [t].[Id])
FROM
	[WindowFunctionTestEntity] [t]

