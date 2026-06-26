-- SqlServer.2005.MS SqlServer.2005

SELECT
	[t].[Id],
	CAST([t].[IntValue] AS Float) / SUM([t].[IntValue]) OVER (PARTITION BY [t].[CategoryId])
FROM
	[WindowFunctionTestEntity] [t]

