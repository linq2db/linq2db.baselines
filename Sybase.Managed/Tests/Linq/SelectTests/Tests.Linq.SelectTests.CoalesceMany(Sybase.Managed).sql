BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'CoalesceNullableFields') IS NOT NULL)
	DROP TABLE [CoalesceNullableFields]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'CoalesceNullableFields') IS NULL)
	EXECUTE('
		CREATE TABLE [CoalesceNullableFields]
		(
			[Id]        Int NOT NULL,
			[Nullable1] Int     NULL,
			[Nullable2] Int     NULL,
			[Nullable3] Int     NULL,

			CONSTRAINT [PK_CoalesceNullableFields] PRIMARY KEY CLUSTERED ([Id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

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
-- Sybase.Managed Sybase

SELECT
	Coalesce([t].[Nullable1], [t].[Nullable2], [t].[Nullable3], [t].[Id]),
	Coalesce([t].[Nullable2], [t].[Nullable1], [t].[Nullable3], [t].[Id]),
	Coalesce([t].[Nullable2], [t].[Nullable3], [t].[Nullable1], [t].[Id]),
	Coalesce([t].[Nullable3], [t].[Nullable1], [t].[Nullable2], [t].[Id]),
	Coalesce([t].[Nullable3], [t].[Nullable2], [t].[Nullable1], [t].[Id])
FROM
	[CoalesceNullableFields] [t]

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[Nullable1],
	[t1].[Nullable2],
	[t1].[Nullable3]
FROM
	[CoalesceNullableFields] [t1]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'CoalesceNullableFields') IS NOT NULL)
	DROP TABLE [CoalesceNullableFields]

