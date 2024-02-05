BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [Condos]

BeforeExecute
-- SqlServer.2017

IF (OBJECT_ID(N'[Condos]', N'U') IS NULL)
	CREATE TABLE [Condos]
	(
		[Id]         Int NOT NULL,
		[LocationId] Int NOT NULL,

		CONSTRAINT [PK_Condos] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [CategoryCondos]

BeforeExecute
-- SqlServer.2017

IF (OBJECT_ID(N'[CategoryCondos]', N'U') IS NULL)
	CREATE TABLE [CategoryCondos]
	(
		[CategoryId] Int NOT NULL,
		[CondoId]    Int NOT NULL,

		CONSTRAINT [PK_CategoryCondos] PRIMARY KEY CLUSTERED ([CategoryId], [CondoId])
	)

BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [CondoTags]

BeforeExecute
-- SqlServer.2017

IF (OBJECT_ID(N'[CondoTags]', N'U') IS NULL)
	CREATE TABLE [CondoTags]
	(
		[CondoId] Int NOT NULL,
		[TagId]   Int NOT NULL,

		CONSTRAINT [PK_CondoTags] PRIMARY KEY CLUSTERED ([CondoId], [TagId])
	)

BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [Locations]

BeforeExecute
-- SqlServer.2017

IF (OBJECT_ID(N'[Locations]', N'U') IS NULL)
	CREATE TABLE [Locations]
	(
		[Id]           Int           NOT NULL,
		[LocationName] NVarChar(100) NOT NULL,

		CONSTRAINT [PK_Locations] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2017

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
-- SqlServer.2017

DROP TABLE IF EXISTS [Locations]

BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [CondoTags]

BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [CategoryCondos]

BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [Condos]

