-- SqlCe
SELECT
	[r].[Id],
	CASE
		WHEN [r].[C] IS NULL THEN CASE
			WHEN [r].[Flag] = 1 THEN 1
			WHEN [r].[Flag] = 0 THEN 0
			ELSE NULL
		END
		WHEN [r].[A] IS NULL THEN 1
		ELSE CASE
			WHEN [r].[Flag] = 1 THEN 1
			WHEN [r].[Flag] = 0 THEN 0
			ELSE NULL
		END
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

