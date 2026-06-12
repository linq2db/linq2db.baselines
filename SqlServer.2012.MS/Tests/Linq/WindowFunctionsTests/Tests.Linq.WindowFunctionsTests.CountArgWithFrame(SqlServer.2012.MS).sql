-- SqlServer.2012.MS SqlServer.2012

SELECT
	COUNT([t].[NullableIntValue]) OVER (ORDER BY [t].[Id] ROWS BETWEEN 2 PRECEDING AND 2 FOLLOWING)
FROM
	[WindowFunctionTestEntity] [t]

