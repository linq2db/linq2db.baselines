BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [EntityMA]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

IF (OBJECT_ID(N'[EntityMA]', N'U') IS NULL)
	CREATE TABLE [EntityMA]
	(
		[Id] Int NOT NULL,
		[FK] Int     NULL,

		CONSTRAINT [PK_EntityMA] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

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
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [EntityMB]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

IF (OBJECT_ID(N'[EntityMB]', N'U') IS NULL)
	CREATE TABLE [EntityMB]
	(
		[Id]  Int NOT NULL,
		[FK]  Int     NULL,
		[FKD] Int     NULL,

		CONSTRAINT [PK_EntityMB] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

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
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [EntityMC]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

IF (OBJECT_ID(N'[EntityMC]', N'U') IS NULL)
	CREATE TABLE [EntityMC]
	(
		[Id] Int NOT NULL,
		[FK] Int     NULL,

		CONSTRAINT [PK_EntityMC] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

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
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [EntityMD]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

IF (OBJECT_ID(N'[EntityMD]', N'U') IS NULL)
	CREATE TABLE [EntityMD]
	(
		[Id] Int NOT NULL,
		[FK] Int     NULL,

		CONSTRAINT [PK_EntityMD] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

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
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	[m_1].[Id],
	[m_1].[Id_1],
	[d_1].[Id],
	[d_1].[FK]
FROM
	(
		SELECT DISTINCT
			[d].[Id],
			[t2].[Id] as [Id_1]
		FROM
			(
				SELECT DISTINCT
					[t1].[Id]
				FROM
					[EntityMA] [t1]
			) [t2]
				INNER JOIN [EntityMB] [d] ON [t2].[Id] = [d].[FK]
	) [m_1]
		INNER JOIN [EntityMC] [d_1] ON [m_1].[Id] = [d_1].[FK]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[FK],
	[d].[FKD]
FROM
	[EntityMA] [m_1]
		INNER JOIN [EntityMB] [d] ON [m_1].[Id] = [d].[FK]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	[t1].[Id],
	[t1].[FK]
FROM
	[EntityMA] [t1]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [EntityMD]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [EntityMC]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [EntityMB]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [EntityMA]

