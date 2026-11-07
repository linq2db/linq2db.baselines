-- SqlServer.Contained SqlServer.2025
SELECT
	[r].[Id],
	CASE
		WHEN [r].[Flag] IS NULL THEN NULL
		WHEN [r].[A] = [r].[B] OR [r].[A] IS NULL AND [r].[B] IS NULL
			THEN 1
		ELSE 0
	END
FROM
	[NullableFlagTable] [r]

-- SqlServer.Contained SqlServer.2025
SELECT
	[t1].[Id],
	[t1].[A],
	[t1].[B],
	[t1].[C],
	[t1].[Flag]
FROM
	[NullableFlagTable] [t1]

