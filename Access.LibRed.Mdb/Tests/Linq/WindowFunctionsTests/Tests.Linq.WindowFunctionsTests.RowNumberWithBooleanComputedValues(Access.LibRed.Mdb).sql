-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[x].[Id],
	ROW_NUMBER() OVER (ORDER BY ([x].[IntValue] = 20) DESC, [x].[Id]),
	ROW_NUMBER() OVER (PARTITION BY [x].[IntValue] = 20 ORDER BY [x].[Id])
FROM
	[WindowFunctionTestEntity] [x]
ORDER BY
	[x].[Id]

