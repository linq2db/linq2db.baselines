-- SqlCe
SELECT
	[t1].[Id],
	[t1].[Value1]
FROM
	[NullableLeftJoinTable] [t1]

-- SqlCe
SELECT
	[l].[Value1]
FROM
	[NullableLeftJoinTable] [p]
		LEFT JOIN [NullableLeftJoinTable] [l] ON [l].[Id] = [p].[Id] + 1

