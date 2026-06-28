-- SqlServer.2019.MS SqlServer.2019

SELECT
	[t].[Id],
	LEAD([t].[IntValue], 2, 0) OVER (ORDER BY [t].[Id])
FROM
	[WindowFunctionTestEntity] [t]

