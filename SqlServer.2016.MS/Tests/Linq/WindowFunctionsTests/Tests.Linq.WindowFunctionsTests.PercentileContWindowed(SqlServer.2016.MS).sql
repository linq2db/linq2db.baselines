-- SqlServer.2016.MS SqlServer.2016

SELECT
	[t].[Id],
	PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY [t].[DoubleValue]) OVER (PARTITION BY [t].[CategoryId])
FROM
	[WindowFunctionTestEntity] [t]

