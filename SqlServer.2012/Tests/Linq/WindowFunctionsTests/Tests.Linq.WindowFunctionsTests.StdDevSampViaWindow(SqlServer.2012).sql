-- SqlServer.2012
SELECT
	[t].[Id],
	STDEV([t].[IntValue]) OVER (PARTITION BY [t].[CategoryId] ORDER BY [t].[Id])
FROM
	[WindowFunctionTestEntity] [t]

