-- SqlServer.2025.MS SqlServer.2025

SELECT
	COUNT([t].[NullableIntValue]) OVER (PARTITION BY [t].[CategoryId] ORDER BY [t].[Id])
FROM
	[WindowFunctionTestEntity] [t]

