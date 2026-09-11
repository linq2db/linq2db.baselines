-- SqlServer.2008.MS SqlServer.2008
SELECT
	[t].[Id],
	ROW_NUMBER() OVER (PARTITION BY [t].[CategoryId] ORDER BY [t].[Id]),
	SUM([t].[IntValue]) OVER (PARTITION BY [t].[CategoryId])
FROM
	[WindowFunctionTestEntity] [t]

