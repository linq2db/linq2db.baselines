-- SqlServer.2022

SELECT
	[t].[Id],
	FIRST_VALUE([t].[IntValue]) IGNORE NULLS OVER (PARTITION BY [t].[CategoryId] ORDER BY [t].[Id])
FROM
	[WindowFunctionTestEntity] [t]

