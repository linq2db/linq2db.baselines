-- SqlServer.2022.MS SqlServer.2022
SELECT
	[t].[Id],
	LEAD(IIF([t].[IntValue] = 20, 1, 0)) OVER (ORDER BY [t].[Id]),
	LEAD([t].[IntValue]) OVER (ORDER BY [t].[Id])
FROM
	[WindowFunctionTestEntity] [t]
ORDER BY
	[t].[Id]

