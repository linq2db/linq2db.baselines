-- SqlServer.Contained SqlServer.2019

SELECT
	COUNT(*) OVER (PARTITION BY [t].[CategoryId] ORDER BY [t].[Id])
FROM
	[WindowFunctionTestEntity] [t]

