-- SqlServer.Contained SqlServer.2019
SELECT
	[t].[Id],
	LEAD(IIF([t].[IntValue] = 20, 1, 0)) OVER (ORDER BY [t].[Id]),
	LEAD([t].[IntValue]) OVER (ORDER BY [t].[Id])
FROM
	[WindowFunctionTestEntity] [t]
ORDER BY
	[t].[Id]

