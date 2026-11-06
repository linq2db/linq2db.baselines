-- SqlServer.CS SqlServer.2025
SELECT
	[r].[Id],
	IIF([r].[A] = [r].[B] OR [r].[A] IS NULL AND [r].[B] IS NULL, 1, 0)
FROM
	[NullableFlagTable] [r]

-- SqlServer.CS SqlServer.2025
SELECT
	[t1].[Id],
	[t1].[A],
	[t1].[B],
	[t1].[C],
	[t1].[Flag]
FROM
	[NullableFlagTable] [t1]

