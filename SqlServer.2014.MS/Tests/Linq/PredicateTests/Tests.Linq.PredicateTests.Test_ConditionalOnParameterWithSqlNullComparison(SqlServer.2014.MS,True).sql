-- SqlServer.2014.MS SqlServer.2014
SELECT
	[r].[Id],
	IIF([r].[A] = [r].[B], 1, 0)
FROM
	[NullableFlagTable] [r]
ORDER BY
	[r].[Id]

