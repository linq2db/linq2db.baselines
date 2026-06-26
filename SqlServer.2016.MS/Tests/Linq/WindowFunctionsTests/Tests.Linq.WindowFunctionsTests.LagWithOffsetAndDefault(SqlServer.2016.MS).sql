-- SqlServer.2016.MS SqlServer.2016

SELECT
	[t].[Id],
	LAG([t].[IntValue], 2, 0) OVER (ORDER BY [t].[Id])
FROM
	[WindowFunctionTestEntity] [t]

