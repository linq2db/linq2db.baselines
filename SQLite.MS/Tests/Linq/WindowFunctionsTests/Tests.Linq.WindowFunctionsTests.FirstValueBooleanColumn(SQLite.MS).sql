-- SQLite.MS SQLite
SELECT
	[t].[Id],
	FIRST_VALUE([t].[BoolValue]) OVER (ORDER BY [t].[Id] DESC),
	FIRST_VALUE([t].[NullableBoolValue]) OVER (ORDER BY [t].[Id] DESC),
	FIRST_VALUE([t].[IntValue] % 20 = 0) OVER (ORDER BY [t].[Id] DESC)
FROM
	[WindowFunctionTestEntity] [t]
ORDER BY
	[t].[Id]

