-- SqlServer.2022.MS SqlServer.2022

SELECT
	[t].[Id],
	CAST([t].[IntValue] AS Float) / SUM([t].[IntValue]) OVER (PARTITION BY [t].[CategoryId])
FROM
	[WindowFunctionTestEntity] [t]

