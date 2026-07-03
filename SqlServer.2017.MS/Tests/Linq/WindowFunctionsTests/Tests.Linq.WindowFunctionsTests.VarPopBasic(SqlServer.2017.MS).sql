-- SqlServer.2017.MS SqlServer.2017

SELECT
	[t].[Id],
	VARP([t].[IntValue]) OVER (PARTITION BY [t].[CategoryId] ORDER BY [t].[Id])
FROM
	[WindowFunctionTestEntity] [t]

