-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[r].[Id],
	IIF([r].[A] = [r].[B], True, False)
FROM
	[NullableFlagTable] [r]
ORDER BY
	[r].[Id]

