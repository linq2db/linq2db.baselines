BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [CoalesceNullableFields]

BeforeExecute
-- SqlServer.SA SqlServer.2019

IF (OBJECT_ID(N'[CoalesceNullableFields]', N'U') IS NULL)
	CREATE TABLE [CoalesceNullableFields]
	(
		[Id]        Int NOT NULL,
		[Nullable1] Int     NULL,
		[Nullable2] Int     NULL,
		[Nullable3] Int     NULL,

		CONSTRAINT [PK_CoalesceNullableFields] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.SA SqlServer.2019
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
-- SqlServer.SA SqlServer.2019
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
-- SqlServer.SA SqlServer.2019
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
-- SqlServer.SA SqlServer.2019
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
-- SqlServer.SA SqlServer.2019

SELECT
	Coalesce([t].[Nullable1], [t].[Nullable2], [t].[Nullable3], [t].[Id]),
	Coalesce([t].[Nullable2], [t].[Nullable1], [t].[Nullable3], [t].[Id]),
	Coalesce([t].[Nullable2], [t].[Nullable3], [t].[Nullable1], [t].[Id]),
	Coalesce([t].[Nullable3], [t].[Nullable1], [t].[Nullable2], [t].[Id]),
	Coalesce([t].[Nullable3], [t].[Nullable2], [t].[Nullable1], [t].[Id])
FROM
	[CoalesceNullableFields] [t]

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[Nullable1],
	[t1].[Nullable2],
	[t1].[Nullable3]
FROM
	[CoalesceNullableFields] [t1]

BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [CoalesceNullableFields]

