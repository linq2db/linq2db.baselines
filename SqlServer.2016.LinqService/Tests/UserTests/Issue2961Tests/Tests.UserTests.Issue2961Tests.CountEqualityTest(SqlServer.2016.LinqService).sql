BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [Condos]

BeforeExecute
-- SqlServer.2016

IF (OBJECT_ID(N'[Condos]', N'U') IS NULL)
	CREATE TABLE [Condos]
	(
		[Id]         Int NOT NULL,
		[LocationId] Int NOT NULL,

		CONSTRAINT [PK_Condos] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [CategoryCondos]

BeforeExecute
-- SqlServer.2016

IF (OBJECT_ID(N'[CategoryCondos]', N'U') IS NULL)
	CREATE TABLE [CategoryCondos]
	(
		[CategoryId] Int NOT NULL,
		[CondoId]    Int NOT NULL,

		CONSTRAINT [PK_CategoryCondos] PRIMARY KEY CLUSTERED ([CategoryId], [CondoId])
	)

BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [CondoTags]

BeforeExecute
-- SqlServer.2016

IF (OBJECT_ID(N'[CondoTags]', N'U') IS NULL)
	CREATE TABLE [CondoTags]
	(
		[CondoId] Int NOT NULL,
		[TagId]   Int NOT NULL,

		CONSTRAINT [PK_CondoTags] PRIMARY KEY CLUSTERED ([CondoId], [TagId])
	)

BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [Locations]

BeforeExecute
-- SqlServer.2016

IF (OBJECT_ID(N'[Locations]', N'U') IS NULL)
	CREATE TABLE [Locations]
	(
		[Id]           Int           NOT NULL,
		[LocationName] NVarChar(100) NOT NULL,

		CONSTRAINT [PK_Locations] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2016

SELECT
	[c_1].[Id],
	[c_1].[LocationId],
	[subcc].[CountCondoCategories],
	[subct].[CountCondoTags],
	[l].[LocationName],
	[l].[Id]
FROM
	[Condos] [c_1]
		INNER JOIN [Locations] [l] ON [c_1].[LocationId] = [l].[Id]
		LEFT JOIN (
			SELECT
				[g2].[CondoId] as [Key_1],
				COUNT(*) as [CountCondoTags]
			FROM
				[CondoTags] [g2]
			GROUP BY
				[g2].[CondoId]
		) [subct] ON [c_1].[Id] = [subct].[Key_1]
		LEFT JOIN (
			SELECT
				[g1].[CondoId] as [Key_1],
				COUNT(*) as [CountCondoCategories]
			FROM
				[CategoryCondos] [g1]
			GROUP BY
				[g1].[CondoId]
		) [subcc] ON [c_1].[Id] = [subcc].[Key_1]

BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [Locations]

BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [CondoTags]

BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [CategoryCondos]

BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [Condos]

