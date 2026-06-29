-- SqlServer.2025

SELECT
	[t].[Id],
	PERCENTILE_DISC(0.5) WITHIN GROUP (ORDER BY [t].[IntValue]) OVER (PARTITION BY [t].[CategoryId])
FROM
	[WindowFunctionTestEntity] [t]

