-- SqlServer.2012.MS SqlServer.2012

SELECT
	[t].[Id],
	CAST([t].[IntValue] AS Float) / SUM([t].[IntValue]) OVER (PARTITION BY [t].[CategoryId])
FROM
	[WindowFunctionTestEntity] [t]

