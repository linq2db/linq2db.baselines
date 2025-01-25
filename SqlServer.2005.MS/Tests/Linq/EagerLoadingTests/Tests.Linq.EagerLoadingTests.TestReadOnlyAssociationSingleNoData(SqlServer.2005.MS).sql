BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[EntityA]', N'U') IS NOT NULL)
	DROP TABLE [EntityA]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[EntityA]', N'U') IS NULL)
	CREATE TABLE [EntityA]
	(
		[Id] Int NOT NULL,
		[FK] Int     NULL,

		CONSTRAINT [PK_EntityA] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[EntityB]', N'U') IS NOT NULL)
	DROP TABLE [EntityB]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[EntityB]', N'U') IS NULL)
	CREATE TABLE [EntityB]
	(
		[Id] Int NOT NULL,
		[FK] Int     NULL,

		CONSTRAINT [PK_EntityB] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[EntityC]', N'U') IS NOT NULL)
	DROP TABLE [EntityC]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[EntityC]', N'U') IS NULL)
	CREATE TABLE [EntityC]
	(
		[Id] Int NOT NULL,
		[FK] Int     NULL,

		CONSTRAINT [PK_EntityC] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[EntityD]', N'U') IS NOT NULL)
	DROP TABLE [EntityD]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[EntityD]', N'U') IS NULL)
	CREATE TABLE [EntityD]
	(
		[Id] Int NOT NULL,
		[FK] Int     NULL,

		CONSTRAINT [PK_EntityD] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[EntityD]', N'U') IS NOT NULL)
	DROP TABLE [EntityD]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[EntityC]', N'U') IS NOT NULL)
	DROP TABLE [EntityC]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[EntityB]', N'U') IS NOT NULL)
	DROP TABLE [EntityB]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[EntityA]', N'U') IS NOT NULL)
	DROP TABLE [EntityA]

