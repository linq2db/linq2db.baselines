-- SqlServer.2012.MS SqlServer.2012

SELECT
	COUNT([t].[NullableIntValue]) OVER (PARTITION BY [t].[CategoryId] ORDER BY [t].[Id])
FROM
	[WindowFunctionTestEntity] [t]

