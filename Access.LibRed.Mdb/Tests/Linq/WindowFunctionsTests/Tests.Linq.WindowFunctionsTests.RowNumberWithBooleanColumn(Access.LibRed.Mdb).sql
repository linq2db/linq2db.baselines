-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[x].[Id],
	ROW_NUMBER() OVER (ORDER BY ([x].[BoolValue]) DESC, [x].[Id]),
	ROW_NUMBER() OVER (ORDER BY ([x].[IntValue] MOD 20 = 0) DESC, [x].[Id]),
	ROW_NUMBER() OVER (PARTITION BY [x].[BoolValue] ORDER BY [x].[Id]),
	ROW_NUMBER() OVER (PARTITION BY [x].[IntValue] MOD 20 = 0 ORDER BY [x].[Id]),
	ROW_NUMBER() OVER (PARTITION BY [x].[NullableBoolValue] ORDER BY [x].[Id])
FROM
	[WindowFunctionTestEntity] [x]
ORDER BY
	[x].[Id]

