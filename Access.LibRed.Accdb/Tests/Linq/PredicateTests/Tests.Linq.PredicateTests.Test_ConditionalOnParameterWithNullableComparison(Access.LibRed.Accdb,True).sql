-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[r].[Id],
	IIF([r].[A] = [r].[B] OR [r].[A] IS NULL AND [r].[B] IS NULL, True, False)
FROM
	[NullableFlagTable] [r]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[t1].[Id],
	[t1].[A],
	[t1].[B],
	[t1].[C],
	[t1].[Flag]
FROM
	[NullableFlagTable] [t1]

