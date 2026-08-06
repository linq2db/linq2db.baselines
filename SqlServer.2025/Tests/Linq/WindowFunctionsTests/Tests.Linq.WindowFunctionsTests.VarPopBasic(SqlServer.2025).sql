-- SqlServer.2025
SELECT
	[t].[Id],
	VARP([t].[IntValue]) OVER (PARTITION BY [t].[CategoryId] ORDER BY [t].[Id])
FROM
	[WindowFunctionTestEntity] [t]

