-- SqlServer.2025.MS SqlServer.2025

SELECT
	COUNT(*) OVER (PARTITION BY [t].[CategoryId] ORDER BY [t].[Id]),
	COUNT(*) OVER (ORDER BY [t].[Id])
FROM
	[WindowFunctionTestEntity] [t]

