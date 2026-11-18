-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[t].[Id],
	SUM([t].[IntValue]) OVER (PARTITION BY [t].[CategoryId] ORDER BY ([t].[IntValue] = 20) DESC, [t].[Id]),
	SUM([t].[IntValue]) OVER (PARTITION BY [t].[IntValue] = 20 ORDER BY [t].[Id]),
	SUM([t].[IntValue]) OVER (PARTITION BY [t].[NullableIntValue] IS NOT NULL ORDER BY [t].[Id])
FROM
	[WindowFunctionTestEntity] [t]

