-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[r].[Id],
	ROW_NUMBER() OVER (PARTITION BY [r].[Value1] <> [r].[Value4] OR [r].[Value4] IS NULL ORDER BY [r].[Id]),
	ROW_NUMBER() OVER (ORDER BY [r].[Value1] <> [r].[Value4] OR [r].[Value4] IS NULL, [r].[Id])
FROM
	[BooleanTable] [r]
ORDER BY
	[r].[Id]

