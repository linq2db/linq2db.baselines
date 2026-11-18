-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[r].[Id]
FROM
	[BooleanTable] [r]
ORDER BY
	([r].[Value1] <> [r].[Value4] OR [r].[Value4] IS NULL) DESC,
	[r].[Id]

