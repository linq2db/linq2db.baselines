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
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Nullable1 Int -- Int32
SET     @Nullable1 = 10
DECLARE @Nullable2 Int -- Int32
SET     @Nullable2 = NULL
DECLARE @Nullable3 Int -- Int32
SET     @Nullable3 = NULL

INSERT INTO [CoalesceNullableFields]
(
	[Id],
	[Nullable1],
	[Nullable2],
	[Nullable3]
)
VALUES
(
	@Id,
	@Nullable1,
	@Nullable2,
	@Nullable3
)

BeforeExecute
-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Nullable1 Int -- Int32
SET     @Nullable1 = NULL
DECLARE @Nullable2 Int -- Int32
SET     @Nullable2 = 20
DECLARE @Nullable3 Int -- Int32
SET     @Nullable3 = NULL

INSERT INTO [CoalesceNullableFields]
(
	[Id],
	[Nullable1],
	[Nullable2],
	[Nullable3]
)
VALUES
(
	@Id,
	@Nullable1,
	@Nullable2,
	@Nullable3
)

BeforeExecute
-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 3
DECLARE @Nullable1 Int -- Int32
SET     @Nullable1 = NULL
DECLARE @Nullable2 Int -- Int32
SET     @Nullable2 = NULL
DECLARE @Nullable3 Int -- Int32
SET     @Nullable3 = 30

INSERT INTO [CoalesceNullableFields]
(
	[Id],
	[Nullable1],
	[Nullable2],
	[Nullable3]
)
VALUES
(
	@Id,
	@Nullable1,
	@Nullable2,
	@Nullable3
)

BeforeExecute
-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 4
DECLARE @Nullable1 Int -- Int32
SET     @Nullable1 = NULL
DECLARE @Nullable2 Int -- Int32
SET     @Nullable2 = NULL
DECLARE @Nullable3 Int -- Int32
SET     @Nullable3 = NULL

INSERT INTO [CoalesceNullableFields]
(
	[Id],
	[Nullable1],
	[Nullable2],
	[Nullable3]
)
VALUES
(
	@Id,
	@Nullable1,
	@Nullable2,
	@Nullable3
)

BeforeExecute
-- SqlCe

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

