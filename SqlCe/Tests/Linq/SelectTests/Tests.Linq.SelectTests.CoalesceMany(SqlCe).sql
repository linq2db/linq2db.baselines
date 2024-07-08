BeforeExecute
-- SqlCe

DROP TABLE [CoalesceNullableFields]

BeforeExecute
-- SqlCe

CREATE TABLE [CoalesceNullableFields]
(
	[Id]        Int NOT NULL,
	[Nullable1] Int     NULL,
	[Nullable2] Int     NULL,
	[Nullable3] Int     NULL,

	CONSTRAINT [PK_CoalesceNullableFields] PRIMARY KEY ([Id])
)

BeforeExecute
-- SqlCe

INSERT INTO [CoalesceNullableFields]
(
	[Id],
	[Nullable1],
	[Nullable2],
	[Nullable3]
)
SELECT 1,10,NULL,NULL UNION ALL
SELECT 2,NULL,20,NULL UNION ALL
SELECT 3,NULL,NULL,30 UNION ALL
SELECT 4,NULL,NULL,NULL

BeforeExecute
-- SqlCe

SELECT
	Coalesce([t].[Nullable1], [t].[Nullable2], [t].[Nullable3], [t].[Id]) as [c1],
	Coalesce([t].[Nullable2], [t].[Nullable1], [t].[Nullable3], [t].[Id]) as [c2],
	Coalesce([t].[Nullable2], [t].[Nullable3], [t].[Nullable1], [t].[Id]) as [c3],
	Coalesce([t].[Nullable3], [t].[Nullable1], [t].[Nullable2], [t].[Id]) as [c4],
	Coalesce([t].[Nullable3], [t].[Nullable2], [t].[Nullable1], [t].[Id]) as [c5]
FROM
	[CoalesceNullableFields] [t]

BeforeExecute
-- SqlCe

SELECT
	[t1].[Id],
	[t1].[Nullable1],
	[t1].[Nullable2],
	[t1].[Nullable3]
FROM
	[CoalesceNullableFields] [t1]

BeforeExecute
-- SqlCe

DROP TABLE [CoalesceNullableFields]

