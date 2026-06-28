-- SqlServer.SA.MS SqlServer.2019

SELECT
	[t].[Id],
	PERCENTILE_DISC(0.5) WITHIN GROUP (ORDER BY [t].[IntValue]) OVER (PARTITION BY [t].[CategoryId])
FROM
	[WindowFunctionTestEntity] [t]

