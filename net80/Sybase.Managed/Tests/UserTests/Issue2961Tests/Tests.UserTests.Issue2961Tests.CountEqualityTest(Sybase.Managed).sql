BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Condos') IS NOT NULL)
	DROP TABLE [Condos]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Condos') IS NULL)
	EXECUTE('
		CREATE TABLE [Condos]
		(
			[Id]         Int NOT NULL,
			[LocationId] Int NOT NULL,

			CONSTRAINT [PK_Condos] PRIMARY KEY CLUSTERED ([Id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'CategoryCondos') IS NOT NULL)
	DROP TABLE [CategoryCondos]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'CategoryCondos') IS NULL)
	EXECUTE('
		CREATE TABLE [CategoryCondos]
		(
			[CategoryId] Int NOT NULL,
			[CondoId]    Int NOT NULL,

			CONSTRAINT [PK_CategoryCondos] PRIMARY KEY CLUSTERED ([CategoryId], [CondoId])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'CondoTags') IS NOT NULL)
	DROP TABLE [CondoTags]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'CondoTags') IS NULL)
	EXECUTE('
		CREATE TABLE [CondoTags]
		(
			[CondoId] Int NOT NULL,
			[TagId]   Int NOT NULL,

			CONSTRAINT [PK_CondoTags] PRIMARY KEY CLUSTERED ([CondoId], [TagId])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Locations') IS NOT NULL)
	DROP TABLE [Locations]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Locations') IS NULL)
	EXECUTE('
		CREATE TABLE [Locations]
		(
			[Id]           Int           NOT NULL,
			[LocationName] NVarChar(100) NOT NULL,

			CONSTRAINT [PK_Locations] PRIMARY KEY CLUSTERED ([Id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[c_1].[Id],
	[c_1].[LocationId],
	[t2].[CountCondoCategories],
	[t1].[CountCondoTags],
	[l].[LocationName],
	[l].[Id]
FROM
	[Condos] [c_1]
		INNER JOIN [Locations] [l] ON [c_1].[LocationId] = [l].[Id]
		LEFT JOIN (
			SELECT
				[ctleft].[CondoId] as [subct],
				Count(*) as [CountCondoTags]
			FROM
				[CondoTags] [ctleft]
			GROUP BY
				[ctleft].[CondoId]
		) [t1] ON [c_1].[Id] = [t1].[subct]
		LEFT JOIN (
			SELECT
				[ccleft].[CondoId] as [subcc],
				Count(*) as [CountCondoCategories]
			FROM
				[CategoryCondos] [ccleft]
			GROUP BY
				[ccleft].[CondoId]
		) [t2] ON [c_1].[Id] = [t2].[subcc]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Locations') IS NOT NULL)
	DROP TABLE [Locations]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'CondoTags') IS NOT NULL)
	DROP TABLE [CondoTags]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'CategoryCondos') IS NOT NULL)
	DROP TABLE [CategoryCondos]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Condos') IS NOT NULL)
	DROP TABLE [Condos]

