BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [EntityA]

BeforeExecute
-- SqlServer.2017

IF (OBJECT_ID(N'[EntityA]', N'U') IS NULL)
	CREATE TABLE [EntityA]
	(
		[Id] Int NOT NULL,
		[FK] Int     NULL,

		CONSTRAINT [PK_EntityA] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2017

INSERT INTO [EntityA]
(
	[Id],
	[FK]
)
VALUES
(10,20),
(11,21),
(12,22),
(13,20),
(14,NULL),
(15,NULL),
(16,25),
(17,26),
(18,29)

BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [EntityB]

BeforeExecute
-- SqlServer.2017

IF (OBJECT_ID(N'[EntityB]', N'U') IS NULL)
	CREATE TABLE [EntityB]
	(
		[Id] Int NOT NULL,
		[FK] Int     NULL,

		CONSTRAINT [PK_EntityB] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2017

INSERT INTO [EntityB]
(
	[Id],
	[FK]
)
VALUES
(20,30),
(21,31),
(22,30),
(23,31),
(24,31),
(25,NULL),
(26,NULL),
(27,NULL),
(28,39)

BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [EntityC]

BeforeExecute
-- SqlServer.2017

IF (OBJECT_ID(N'[EntityC]', N'U') IS NULL)
	CREATE TABLE [EntityC]
	(
		[Id] Int NOT NULL,
		[FK] Int     NULL,

		CONSTRAINT [PK_EntityC] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2017

INSERT INTO [EntityC]
(
	[Id],
	[FK]
)
VALUES
(30,NULL),
(31,NULL),
(32,NULL),
(33,NULL),
(34,NULL)

BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [EntityD]

BeforeExecute
-- SqlServer.2017

IF (OBJECT_ID(N'[EntityD]', N'U') IS NULL)
	CREATE TABLE [EntityD]
	(
		[Id] Int NOT NULL,
		[FK] Int     NULL,

		CONSTRAINT [PK_EntityD] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2017

INSERT INTO [EntityD]
(
	[Id],
	[FK]
)
VALUES
(40,20),
(41,21),
(42,21),
(43,21),
(44,25),
(45,26),
(46,26),
(47,NULL),
(48,NULL),
(401,29)

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.2017

SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[FK]
FROM
	(
		SELECT DISTINCT
			[a_ObjectB].[Id]
		FROM
			[EntityA] [t1]
				INNER JOIN [EntityB] [a_ObjectB] ON [t1].[FK] = [a_ObjectB].[Id]
	) [m_1]
		INNER JOIN [EntityD] [d] ON [m_1].[Id] = [d].[FK]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlServer.2017

SELECT
	[t1].[Id],
	[t1].[FK],
	[a_ObjectB].[Id],
	[a_ObjectB].[FK]
FROM
	[EntityA] [t1]
		INNER JOIN [EntityB] [a_ObjectB] ON [t1].[FK] = [a_ObjectB].[Id]

BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [EntityD]

BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [EntityC]

BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [EntityB]

BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [EntityA]

