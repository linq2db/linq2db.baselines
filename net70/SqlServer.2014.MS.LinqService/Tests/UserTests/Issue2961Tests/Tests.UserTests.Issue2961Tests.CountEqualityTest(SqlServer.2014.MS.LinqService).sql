﻿BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[Condos]', N'U') IS NOT NULL)
	DROP TABLE [Condos]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[Condos]', N'U') IS NULL)
	CREATE TABLE [Condos]
	(
		[Id]         Int NOT NULL,
		[LocationId] Int NOT NULL,

		CONSTRAINT [PK_Condos] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[CategoryCondos]', N'U') IS NOT NULL)
	DROP TABLE [CategoryCondos]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[CategoryCondos]', N'U') IS NULL)
	CREATE TABLE [CategoryCondos]
	(
		[CategoryId] Int NOT NULL,
		[CondoId]    Int NOT NULL,

		CONSTRAINT [PK_CategoryCondos] PRIMARY KEY CLUSTERED ([CategoryId], [CondoId])
	)

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[CondoTags]', N'U') IS NOT NULL)
	DROP TABLE [CondoTags]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[CondoTags]', N'U') IS NULL)
	CREATE TABLE [CondoTags]
	(
		[CondoId] Int NOT NULL,
		[TagId]   Int NOT NULL,

		CONSTRAINT [PK_CondoTags] PRIMARY KEY CLUSTERED ([CondoId], [TagId])
	)

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[Locations]', N'U') IS NOT NULL)
	DROP TABLE [Locations]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[Locations]', N'U') IS NULL)
	CREATE TABLE [Locations]
	(
		[Id]           Int           NOT NULL,
		[LocationName] NVarChar(100) NOT NULL,

		CONSTRAINT [PK_Locations] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	[c_1].[Id],
	[c_1].[LocationId],
	[t4].[CountCondoCategories],
	[t2].[CountCondoTags],
	[l].[LocationName],
	[l].[Id]
FROM
	[Condos] [c_1]
		INNER JOIN [Locations] [l] ON [c_1].[LocationId] = [l].[Id]
		LEFT JOIN (
			SELECT
				[ctleft].[CondoId] as [subct],
				[ctleft].[CountCondoTags]
			FROM
				(
					SELECT
						[t1].[CondoId],
						Count(*) as [CountCondoTags]
					FROM
						[CondoTags] [t1]
					GROUP BY
						[t1].[CondoId]
				) [ctleft]
		) [t2] ON [c_1].[Id] = [t2].[subct]
		LEFT JOIN (
			SELECT
				[ccleft].[CondoId] as [subcc],
				[ccleft].[CountCondoCategories]
			FROM
				(
					SELECT
						[t3].[CondoId],
						Count(*) as [CountCondoCategories]
					FROM
						[CategoryCondos] [t3]
					GROUP BY
						[t3].[CondoId]
				) [ccleft]
		) [t4] ON [c_1].[Id] = [t4].[subcc]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[Locations]', N'U') IS NOT NULL)
	DROP TABLE [Locations]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[CondoTags]', N'U') IS NOT NULL)
	DROP TABLE [CondoTags]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[CategoryCondos]', N'U') IS NOT NULL)
	DROP TABLE [CategoryCondos]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[Condos]', N'U') IS NOT NULL)
	DROP TABLE [Condos]

