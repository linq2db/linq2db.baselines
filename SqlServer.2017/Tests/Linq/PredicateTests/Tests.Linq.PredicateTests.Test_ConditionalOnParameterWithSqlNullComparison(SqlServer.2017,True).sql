-- SqlServer.2017
SELECT
	[r].[Id],
	IIF([r].[A] = [r].[B], 1, 0)
FROM
	[NullableFlagTable] [r]
ORDER BY
	[r].[Id]

