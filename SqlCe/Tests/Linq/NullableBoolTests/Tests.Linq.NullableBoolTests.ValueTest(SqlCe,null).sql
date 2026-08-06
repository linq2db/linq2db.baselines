-- SqlCe
SELECT
	[t].[Id],
	[t].[Value]
FROM
	[NullableBoolClass] [t]
WHERE
	[t].[Value] IS NULL

-- SqlCe
SELECT
	[t].[Id],
	[t].[Value]
FROM
	[NullableBoolClass] [t]
WHERE
	1 = 0

-- SqlCe
SELECT
	[t].[Id],
	[t].[Value]
FROM
	[NullableBoolClass] [t]
WHERE
	[t].[Value] IS NOT NULL

-- SqlCe
SELECT
	[t].[Id],
	[t].[Value]
FROM
	[NullableBoolClass] [t]

