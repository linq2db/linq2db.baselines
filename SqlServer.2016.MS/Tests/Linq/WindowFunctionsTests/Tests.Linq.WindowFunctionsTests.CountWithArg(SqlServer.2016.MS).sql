-- SqlServer.2016.MS SqlServer.2016

SELECT
	COUNT([t].[NullableIntValue]) OVER (PARTITION BY [t].[CategoryId] ORDER BY [t].[Id])
FROM
	[WindowFunctionTestEntity] [t]

