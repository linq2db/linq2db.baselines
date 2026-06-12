-- SqlServer.2017.MS SqlServer.2017

SELECT
	COUNT(*) OVER (PARTITION BY [t].[CategoryId] ORDER BY [t].[Id]),
	COUNT(*) OVER (ORDER BY [t].[Id])
FROM
	[WindowFunctionTestEntity] [t]

