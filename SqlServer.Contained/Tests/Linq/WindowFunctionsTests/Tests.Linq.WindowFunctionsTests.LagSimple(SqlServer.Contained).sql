-- SqlServer.Contained SqlServer.2019

SELECT
	[t].[Id],
	LAG([t].[IntValue]) OVER (ORDER BY [t].[Id])
FROM
	[WindowFunctionTestEntity] [t]

