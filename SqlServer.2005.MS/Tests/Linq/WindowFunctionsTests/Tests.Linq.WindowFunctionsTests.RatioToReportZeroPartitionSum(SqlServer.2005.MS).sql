-- SqlServer.2005.MS SqlServer.2005
SELECT
	[t].[Id],
	CAST([t].[IntValue] AS Float) / NULLIF(CAST(SUM([t].[IntValue]) OVER (PARTITION BY [t].[CategoryId]) AS Float), 0)
FROM
	[WindowFunctionTestEntity] [t]

