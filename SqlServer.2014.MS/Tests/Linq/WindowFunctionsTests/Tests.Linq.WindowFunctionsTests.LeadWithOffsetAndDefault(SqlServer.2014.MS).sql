-- SqlServer.2014.MS SqlServer.2014

SELECT
	[t].[Id],
	LEAD([t].[IntValue], 2, 0) OVER (ORDER BY [t].[Id])
FROM
	[WindowFunctionTestEntity] [t]

