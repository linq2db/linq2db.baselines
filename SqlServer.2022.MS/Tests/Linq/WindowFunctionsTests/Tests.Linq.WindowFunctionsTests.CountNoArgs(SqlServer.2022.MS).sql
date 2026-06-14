-- SqlServer.2022.MS SqlServer.2022

SELECT
	COUNT(*) OVER (PARTITION BY [t].[CategoryId] ORDER BY [t].[Id]),
	COUNT(*) OVER (ORDER BY [t].[Id])
FROM
	[WindowFunctionTestEntity] [t]

