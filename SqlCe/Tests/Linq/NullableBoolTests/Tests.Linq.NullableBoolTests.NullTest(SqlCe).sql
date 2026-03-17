-- SqlCe

SELECT
	[t].[Id],
	[t].[Value] as [Value_1]
FROM
	[NullableBoolClass] [t]
WHERE
	[t].[Value] IS NULL

-- SqlCe

SELECT
	[t].[Id],
	[t].[Value] as [Value_1]
FROM
	[NullableBoolClass] [t]
WHERE
	[t].[Value] IS NOT NULL

