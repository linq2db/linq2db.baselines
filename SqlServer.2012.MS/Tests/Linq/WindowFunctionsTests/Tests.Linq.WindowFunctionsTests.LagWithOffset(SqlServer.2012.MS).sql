-- SqlServer.2012.MS SqlServer.2012

SELECT
	[t].[Id],
	LAG([t].[IntValue], 2) OVER (ORDER BY [t].[Id])
FROM
	[WindowFunctionTestEntity] [t]

