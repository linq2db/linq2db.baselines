-- SqlServer.2022.MS SqlServer.2022

SELECT
	[t].[Id],
	FIRST_VALUE([t].[IntValue]) OVER (PARTITION BY [t].[CategoryId] ORDER BY [t].[Id] ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW)
FROM
	[WindowFunctionTestEntity] [t]

