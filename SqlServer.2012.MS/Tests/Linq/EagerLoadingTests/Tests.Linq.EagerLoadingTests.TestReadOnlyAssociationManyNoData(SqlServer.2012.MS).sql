BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[EntityMA]', N'U') IS NOT NULL)
	DROP TABLE [EntityMA]

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[EntityMA]', N'U') IS NULL)
	CREATE TABLE [EntityMA]
	(
		[Id] Int NOT NULL,
		[FK] Int     NULL,

		CONSTRAINT [PK_EntityMA] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[EntityMB]', N'U') IS NOT NULL)
	DROP TABLE [EntityMB]

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[EntityMB]', N'U') IS NULL)
	CREATE TABLE [EntityMB]
	(
		[Id]  Int NOT NULL,
		[FK]  Int     NULL,
		[FKD] Int     NULL,

		CONSTRAINT [PK_EntityMB] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[EntityMC]', N'U') IS NOT NULL)
	DROP TABLE [EntityMC]

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[EntityMC]', N'U') IS NULL)
	CREATE TABLE [EntityMC]
	(
		[Id] Int NOT NULL,
		[FK] Int     NULL,

		CONSTRAINT [PK_EntityMC] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[EntityMD]', N'U') IS NOT NULL)
	DROP TABLE [EntityMD]

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[EntityMD]', N'U') IS NULL)
	CREATE TABLE [EntityMD]
	(
		[Id] Int NOT NULL,
		[FK] Int     NULL,

		CONSTRAINT [PK_EntityMD] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[EntityMD]', N'U') IS NOT NULL)
	DROP TABLE [EntityMD]

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[EntityMC]', N'U') IS NOT NULL)
	DROP TABLE [EntityMC]

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[EntityMB]', N'U') IS NOT NULL)
	DROP TABLE [EntityMB]

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[EntityMA]', N'U') IS NOT NULL)
	DROP TABLE [EntityMA]

