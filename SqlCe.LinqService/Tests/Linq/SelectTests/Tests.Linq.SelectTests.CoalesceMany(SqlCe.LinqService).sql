BeforeExecute
-- SqlCe (asynchronously)

SELECT
	Coalesce([t].[Nullable1], [t].[Nullable2], [t].[Nullable3], [t].[Id]) as [c1],
	Coalesce([t].[Nullable2], [t].[Nullable1], [t].[Nullable3], [t].[Id]) as [c2],
	Coalesce([t].[Nullable2], [t].[Nullable3], [t].[Nullable1], [t].[Id]) as [c3],
	Coalesce([t].[Nullable3], [t].[Nullable1], [t].[Nullable2], [t].[Id]) as [c4],
	Coalesce([t].[Nullable3], [t].[Nullable2], [t].[Nullable1], [t].[Id]) as [c5],
	[t].[Id],
	Coalesce([t].[Nullable1], [t].[Id]) as [c6],
	Coalesce([t].[Nullable1], [t].[Nullable2], [t].[Id]) as [c7]
FROM
	[CoalesceNullableFields] [t]

BeforeExecute
-- SqlCe (asynchronously)

SELECT
	[t1].[Id],
	[t1].[Nullable1],
	[t1].[Nullable2],
	[t1].[Nullable3]
FROM
	[CoalesceNullableFields] [t1]

