-- SqlServer.2016.MS SqlServer.2016

SELECT
	[t].[Id],
	LAST_VALUE([t].[IntValue]) OVER (PARTITION BY [t].[CategoryId] ORDER BY [t].[Id] ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING)
FROM
	[WindowFunctionTestEntity] [t]

