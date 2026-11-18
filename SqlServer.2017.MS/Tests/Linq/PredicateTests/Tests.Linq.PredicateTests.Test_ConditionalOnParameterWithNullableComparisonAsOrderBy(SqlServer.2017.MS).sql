-- SqlServer.2017.MS SqlServer.2017
SELECT
	[r].[Id]
FROM
	[NullableFlagTable] [r]
ORDER BY
	IIF([r].[A] = [r].[B] OR [r].[A] IS NULL AND [r].[B] IS NULL, 1, 0),
	[r].[Id]

