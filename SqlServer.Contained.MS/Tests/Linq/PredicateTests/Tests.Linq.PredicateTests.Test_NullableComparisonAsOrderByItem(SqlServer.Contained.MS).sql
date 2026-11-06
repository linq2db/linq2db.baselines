-- SqlServer.Contained.MS SqlServer.2025
SELECT
	[r].[Id]
FROM
	[BooleanTable] [r]
ORDER BY
	IIF([r].[Value1] <> [r].[Value4] OR [r].[Value4] IS NULL, 1, 0),
	[r].[Id]

