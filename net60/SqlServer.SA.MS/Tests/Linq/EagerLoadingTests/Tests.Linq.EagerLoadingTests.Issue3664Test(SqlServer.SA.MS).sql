﻿BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [Test3664]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

IF (OBJECT_ID(N'[Test3664]', N'U') IS NULL)
	CREATE TABLE [Test3664]
	(
		[Id] Int NOT NULL,

		CONSTRAINT [PK_Test3664] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 1

INSERT INTO [Test3664]
(
	[Id]
)
VALUES
(
	@Id
)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [Test3664Item]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

IF (OBJECT_ID(N'[Test3664Item]', N'U') IS NULL)
	CREATE TABLE [Test3664Item]
	(
		[Id]     Int NOT NULL,
		[TestId] Int NOT NULL,

		CONSTRAINT [PK_Test3664Item] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

INSERT INTO [Test3664Item]
(
	[Id],
	[TestId]
)
VALUES
(11,1),
(12,1)

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
DECLARE @id Int -- Int32
SET     @id = 11

SELECT
	[lw_Test3664].[Id],
	[a].[Id],
	[a].[TestId]
FROM
	[Test3664] [lw_Test3664]
		INNER JOIN [Test3664Item] [a] ON [lw_Test3664].[Id] = [a].[TestId] AND [a].[Id] = @id

BeforeExecute
RollbackTransaction
BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[t1].[Id]
FROM
	[Test3664] [t1]

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
DECLARE @id Int -- Int32
SET     @id = 12

SELECT
	[lw_Test3664].[Id],
	[a].[Id],
	[a].[TestId]
FROM
	[Test3664] [lw_Test3664]
		INNER JOIN [Test3664Item] [a] ON [lw_Test3664].[Id] = [a].[TestId] AND [a].[Id] = @id

BeforeExecute
RollbackTransaction
BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[t1].[Id]
FROM
	[Test3664] [t1]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [Test3664Item]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [Test3664]

