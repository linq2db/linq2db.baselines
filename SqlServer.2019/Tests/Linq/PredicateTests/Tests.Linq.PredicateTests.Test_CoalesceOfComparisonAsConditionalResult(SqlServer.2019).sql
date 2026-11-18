-- SqlServer.2019
SELECT
	[r].[Id],
	IIF([r].[C] IS NULL, IIF([r].[A] = [r].[B] OR [r].[A] IS NULL AND [r].[B] IS NULL, 1, 0), [r].[Flag])
FROM
	[NullableFlagTable] [r]

-- SqlServer.2019
SELECT
	[t1].[Id],
	[t1].[A],
	[t1].[B],
	[t1].[C],
	[t1].[Flag]
FROM
	[NullableFlagTable] [t1]

