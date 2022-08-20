BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[Test3697]', N'U') IS NOT NULL)
	DROP TABLE [Test3697]

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[Test3697]', N'U') IS NULL)
	CREATE TABLE [Test3697]
	(
		[Id] Int  NOT NULL IDENTITY,

		CONSTRAINT [PK_Test3697] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2008

INSERT INTO [Test3697] DEFAULT VALUES

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[Test3697Item]', N'U') IS NOT NULL)
	DROP TABLE [Test3697Item]

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[Test3697Item]', N'U') IS NULL)
	CREATE TABLE [Test3697Item]
	(
		[Id]     Int  NOT NULL IDENTITY,
		[Value]  Int  NOT NULL,
		[TestId] Int  NOT NULL,

		CONSTRAINT [PK_Test3697Item] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2008
DECLARE @Value_1 Int -- Int32
SET     @Value_1 = 3
DECLARE @TestId Int -- Int32
SET     @TestId = 1

INSERT INTO [Test3697Item]
(
	[Value],
	[TestId]
)
VALUES
(
	@Value_1,
	@TestId
)

BeforeExecute
-- SqlServer.2008

UPDATE
	[c_1]
SET
	[c_1].[Value] = 1
OUTPUT
	[INSERTED].[Id]
FROM
	[Test3697] [cp]
		INNER JOIN [Test3697Item] [c_1] ON [cp].[Id] = [c_1].[TestId]

BeforeExecute
-- SqlServer.2008

UPDATE
	[b]
SET
	[b].[Value] = 1
OUTPUT
	[INSERTED].[Id]
FROM
	[Test3697] [a]
		INNER JOIN [Test3697Item] [b] ON [a].[Id] = [b].[TestId]

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[Test3697Item]', N'U') IS NOT NULL)
	DROP TABLE [Test3697Item]

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[Test3697]', N'U') IS NOT NULL)
	DROP TABLE [Test3697]

