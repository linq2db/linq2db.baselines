-- SqlServer.2025.MS SqlServer.2025

SELECT
	[t].[Id],
	LAST_VALUE([t].[IntValue]) IGNORE NULLS OVER (PARTITION BY [t].[CategoryId] ORDER BY [t].[Id])
FROM
	[WindowFunctionTestEntity] [t]

