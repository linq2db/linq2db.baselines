BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [EntityMA]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

IF (OBJECT_ID(N'[EntityMA]', N'U') IS NULL)
	CREATE TABLE [EntityMA]
	(
		[Id] Int NOT NULL,
		[FK] Int     NULL,

		CONSTRAINT [PK_EntityMA] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.Contained SqlServer.2019

INSERT INTO [EntityMA]
(
	[Id],
	[FK]
)
VALUES
(10,NULL),
(11,NULL),
(12,NULL),
(13,NULL)

BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [EntityMB]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

IF (OBJECT_ID(N'[EntityMB]', N'U') IS NULL)
	CREATE TABLE [EntityMB]
	(
		[Id]  Int NOT NULL,
		[FK]  Int     NULL,
		[FKD] Int     NULL,

		CONSTRAINT [PK_EntityMB] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.Contained SqlServer.2019

INSERT INTO [EntityMB]
(
	[Id],
	[FK],
	[FKD]
)
VALUES
(20,10,40),
(21,11,NULL),
(22,11,40),
(23,19,49),
(24,19,NULL),
(25,NULL,49),
(26,NULL,40),
(27,19,41),
(28,10,NULL)

BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [EntityMC]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

IF (OBJECT_ID(N'[EntityMC]', N'U') IS NULL)
	CREATE TABLE [EntityMC]
	(
		[Id] Int NOT NULL,
		[FK] Int     NULL,

		CONSTRAINT [PK_EntityMC] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.Contained SqlServer.2019

INSERT INTO [EntityMC]
(
	[Id],
	[FK]
)
VALUES
(30,20),
(31,24),
(32,21),
(33,21),
(34,23),
(35,NULL),
(36,NULL),
(37,29)

BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [EntityMD]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

IF (OBJECT_ID(N'[EntityMD]', N'U') IS NULL)
	CREATE TABLE [EntityMD]
	(
		[Id] Int NOT NULL,
		[FK] Int     NULL,

		CONSTRAINT [PK_EntityMD] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.Contained SqlServer.2019

INSERT INTO [EntityMD]
(
	[Id],
	[FK]
)
VALUES
(40,NULL),
(41,NULL),
(42,NULL)

BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [EntityMD]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [EntityMC]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [EntityMB]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [EntityMA]

