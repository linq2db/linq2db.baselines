-- SqlServer.2012.MS SqlServer.2012

SELECT
	[t].[Id],
	LEAD([t].[IntValue]) OVER (PARTITION BY [t].[CategoryId] ORDER BY [t].[Id])
FROM
	[WindowFunctionTestEntity] [t]

