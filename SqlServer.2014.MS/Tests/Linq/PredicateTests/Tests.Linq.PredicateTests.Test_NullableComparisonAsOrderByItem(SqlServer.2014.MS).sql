-- SqlServer.2014.MS SqlServer.2014
SELECT
	[r].[Id]
FROM
	[BooleanTable] [r]
ORDER BY
	IIF([r].[Value1] <> [r].[Value4] OR [r].[Value4] IS NULL, 1, 0),
	[r].[Id]

