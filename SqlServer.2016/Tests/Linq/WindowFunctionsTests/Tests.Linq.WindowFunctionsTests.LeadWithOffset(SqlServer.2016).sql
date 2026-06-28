-- SqlServer.2016

SELECT
	[t].[Id],
	LEAD([t].[IntValue], 2) OVER (ORDER BY [t].[Id])
FROM
	[WindowFunctionTestEntity] [t]

