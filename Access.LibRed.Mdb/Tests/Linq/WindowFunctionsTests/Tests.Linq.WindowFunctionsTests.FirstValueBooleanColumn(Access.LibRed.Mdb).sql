-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[t].[Id],
	FIRST_VALUE([t].[BoolValue]) OVER (ORDER BY [t].[Id] DESC),
	FIRST_VALUE([t].[NullableBoolValue]) OVER (ORDER BY [t].[Id] DESC),
	FIRST_VALUE([t].[IntValue] MOD 20 = 0) OVER (ORDER BY [t].[Id] DESC)
FROM
	[WindowFunctionTestEntity] [t]
ORDER BY
	[t].[Id]

