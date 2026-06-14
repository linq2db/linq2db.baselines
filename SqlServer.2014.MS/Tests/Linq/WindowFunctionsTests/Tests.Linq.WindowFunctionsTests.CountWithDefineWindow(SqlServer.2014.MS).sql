-- SqlServer.2014.MS SqlServer.2014

SELECT
	COUNT(*) OVER (PARTITION BY [t].[CategoryId] ORDER BY [t].[Id])
FROM
	[WindowFunctionTestEntity] [t]

