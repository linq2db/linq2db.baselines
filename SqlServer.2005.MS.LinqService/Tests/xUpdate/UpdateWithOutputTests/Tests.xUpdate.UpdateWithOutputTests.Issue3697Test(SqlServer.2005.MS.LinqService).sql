BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Test3697]', N'U') IS NOT NULL)
	DROP TABLE [Test3697]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Test3697]', N'U') IS NULL)
	CREATE TABLE [Test3697]
	(
		[Id] Int  NOT NULL IDENTITY,

		CONSTRAINT [PK_Test3697] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

INSERT INTO [Test3697] DEFAULT VALUES

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Test3697Item]', N'U') IS NOT NULL)
	DROP TABLE [Test3697Item]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Test3697Item]', N'U') IS NULL)
	CREATE TABLE [Test3697Item]
	(
		[Id]     Int  NOT NULL IDENTITY,
		[Value]  Int  NOT NULL,
		[TestId] Int  NOT NULL,

		CONSTRAINT [PK_Test3697Item] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005
DECLARE @Value Int -- Int32
SET     @Value = 3
DECLARE @TestId Int -- Int32
SET     @TestId = 1

INSERT INTO [Test3697Item]
(
	[Value],
	[TestId]
)
VALUES
(
	@Value,
	@TestId
)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

UPDATE
	[a_Items]
SET
	[a_Items].[Value] = 1
OUTPUT
	INSERTED.[Id]
FROM
	[Test3697] [a]
		INNER JOIN [Test3697Item] [a_Items] ON [a].[Id] = [a_Items].[TestId]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

UPDATE
	[b]
SET
	[b].[Value] = 1
OUTPUT
	INSERTED.[Id]
FROM
	[Test3697] [a]
		INNER JOIN [Test3697Item] [b] ON [a].[Id] = [b].[TestId]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Test3697Item]', N'U') IS NOT NULL)
	DROP TABLE [Test3697Item]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Test3697]', N'U') IS NOT NULL)
	DROP TABLE [Test3697]

