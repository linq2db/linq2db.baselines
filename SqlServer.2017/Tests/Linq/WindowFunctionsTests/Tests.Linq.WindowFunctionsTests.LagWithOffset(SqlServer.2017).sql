-- SqlServer.2017

SELECT
	[t].[Id],
	LAG([t].[IntValue], 2) OVER (ORDER BY [t].[Id])
FROM
	[WindowFunctionTestEntity] [t]

