-- SqlServer.2016

SELECT
	[t].[Id],
	LEAD([t].[IntValue]) OVER (PARTITION BY [t].[CategoryId] ORDER BY [t].[Id])
FROM
	[WindowFunctionTestEntity] [t]

