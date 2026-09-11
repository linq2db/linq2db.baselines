-- SqlServer.2017.MS SqlServer.2017
SELECT
	[t].[Id],
	LEAD(IIF([t].[IntValue] = 20, 1, 0)) OVER (ORDER BY [t].[Id]),
	LEAD([t].[IntValue]) OVER (ORDER BY [t].[Id])
FROM
	[WindowFunctionTestEntity] [t]
ORDER BY
	[t].[Id]

