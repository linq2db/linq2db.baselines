-- SqlCe
SELECT
	[r].[Id],
	CASE
		WHEN [r].[A] = [r].[B] OR [r].[A] IS NULL AND [r].[B] IS NULL
			THEN 1
		ELSE 0
	END
FROM
	[NullableFlagTable] [r]

-- SqlCe
SELECT
	[t1].[Id],
	[t1].[A],
	[t1].[B],
	[t1].[C],
	[t1].[Flag]
FROM
	[NullableFlagTable] [t1]

