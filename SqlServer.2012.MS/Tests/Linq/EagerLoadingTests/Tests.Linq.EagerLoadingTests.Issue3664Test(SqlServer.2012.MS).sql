BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[Test3664]', N'U') IS NOT NULL)
	DROP TABLE [Test3664]

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[Test3664]', N'U') IS NULL)
	CREATE TABLE [Test3664]
	(
		[Id] Int NOT NULL,

		CONSTRAINT [PK_Test3664] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012
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
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[Test3664Item]', N'U') IS NOT NULL)
	DROP TABLE [Test3664Item]

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[Test3664Item]', N'U') IS NULL)
	CREATE TABLE [Test3664Item]
	(
		[Id]     Int NOT NULL,
		[TestId] Int NOT NULL,

		CONSTRAINT [PK_Test3664Item] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

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
-- SqlServer.2012.MS SqlServer.2012
DECLARE @id Int -- Int32
SET     @id = 11

SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[TestId]
FROM
	[Test3664] [m_1]
		INNER JOIN [Test3664Item] [d] ON [m_1].[Id] = [d].[TestId]
WHERE
	[d].[Id] = @id

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	[t1].[Id]
FROM
	[Test3664] [t1]

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.2012.MS SqlServer.2012
DECLARE @id Int -- Int32
SET     @id = 12

SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[TestId]
FROM
	[Test3664] [m_1]
		INNER JOIN [Test3664Item] [d] ON [m_1].[Id] = [d].[TestId]
WHERE
	[d].[Id] = @id

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	[t1].[Id]
FROM
	[Test3664] [t1]

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[Test3664Item]', N'U') IS NOT NULL)
	DROP TABLE [Test3664Item]

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[Test3664]', N'U') IS NOT NULL)
	DROP TABLE [Test3664]

