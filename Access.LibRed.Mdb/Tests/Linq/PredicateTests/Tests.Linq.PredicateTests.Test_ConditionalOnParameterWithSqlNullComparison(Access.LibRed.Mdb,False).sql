-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[r].[Id],
	IIF(False, False, NULL)
FROM
	[NullableFlagTable] [r]
ORDER BY
	[r].[Id]

