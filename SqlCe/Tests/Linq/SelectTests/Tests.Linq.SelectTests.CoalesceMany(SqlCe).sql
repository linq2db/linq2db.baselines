-- SqlCe

SELECT
	Coalesce([t].[Nullable1], [t].[Nullable2], [t].[Nullable3], [t].[Id]) as [Value1],
	Coalesce([t].[Nullable2], [t].[Nullable1], [t].[Nullable3], [t].[Id]) as [Value2],
	Coalesce([t].[Nullable2], [t].[Nullable3], [t].[Nullable1], [t].[Id]) as [Value3],
	Coalesce([t].[Nullable3], [t].[Nullable1], [t].[Nullable2], [t].[Id]) as [Value4],
	Coalesce([t].[Nullable3], [t].[Nullable2], [t].[Nullable1], [t].[Id]) as [Value5],
	[t].[Id] as [OptimalValue1],
	Coalesce([t].[Nullable1], [t].[Id]) as [OptimalValue2],
	Coalesce([t].[Nullable1], [t].[Nullable2], [t].[Id]) as [OptimalValue3]
FROM
	[CoalesceNullableFields] [t]

-- SqlCe

SELECT
	[t1].[Id],
	[t1].[Nullable1],
	[t1].[Nullable2],
	[t1].[Nullable3]
FROM
	[CoalesceNullableFields] [t1]

