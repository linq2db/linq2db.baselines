-- SqlServer.CS.MS SqlServer.2025
SELECT
	[r].[Id],
	ROW_NUMBER() OVER (PARTITION BY IIF([r].[Value1] <> [r].[Value4] OR [r].[Value4] IS NULL, 1, 0) ORDER BY [r].[Id]),
	ROW_NUMBER() OVER (ORDER BY IIF([r].[Value1] <> [r].[Value4] OR [r].[Value4] IS NULL, 1, 0), [r].[Id])
FROM
	[BooleanTable] [r]
ORDER BY
	[r].[Id]

