-- SqlServer.2016.MS SqlServer.2016

SELECT
	LEAD([t].[IntValue]) OVER (PARTITION BY [t].[CategoryId] ORDER BY [t].[Id]),
	LEAD([t].[IntValue], 2) OVER (PARTITION BY [t].[CategoryId] ORDER BY [t].[Id]),
	LEAD([t].[IntValue], 2, 0) OVER (PARTITION BY [t].[CategoryId] ORDER BY [t].[Id]),
	LAG([t].[IntValue]) OVER (PARTITION BY [t].[CategoryId] ORDER BY [t].[Id]),
	LAG([t].[IntValue], 2) OVER (PARTITION BY [t].[CategoryId] ORDER BY [t].[Id]),
	LAG([t].[IntValue], 2, 0) OVER (PARTITION BY [t].[CategoryId] ORDER BY [t].[Id])
FROM
	[WindowFunctionTestEntity] [t]

