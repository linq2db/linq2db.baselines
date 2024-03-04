﻿BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [Test3697]

BeforeExecute
-- SqlServer.2017

IF (OBJECT_ID(N'[Test3697]', N'U') IS NULL)
	CREATE TABLE [Test3697]
	(
		[Id] Int  NOT NULL IDENTITY,

		CONSTRAINT [PK_Test3697] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2017

INSERT INTO [Test3697] DEFAULT VALUES

BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [Test3697Item]

BeforeExecute
-- SqlServer.2017

IF (OBJECT_ID(N'[Test3697Item]', N'U') IS NULL)
	CREATE TABLE [Test3697Item]
	(
		[Id]     Int  NOT NULL IDENTITY,
		[Value]  Int  NOT NULL,
		[TestId] Int  NOT NULL,

		CONSTRAINT [PK_Test3697Item] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2017

INSERT INTO [Test3697Item]
(
	[Value],
	[TestId]
)
VALUES
(3,1)

BeforeExecute
-- SqlServer.2017
DECLARE @Value Int -- Int32
SET     @Value = 1

UPDATE
	[a_Items]
SET
	[a_Items].[Value] = @Value
OUTPUT
	INSERTED.[Id]
FROM
	[Test3697] [a]
		INNER JOIN [Test3697Item] [a_Items] ON [a].[Id] = [a_Items].[TestId]

BeforeExecute
-- SqlServer.2017
DECLARE @Value Int -- Int32
SET     @Value = 1

UPDATE
	[b]
SET
	[b].[Value] = @Value
OUTPUT
	INSERTED.[Id]
FROM
	[Test3697] [a]
		INNER JOIN [Test3697Item] [b] ON [a].[Id] = [b].[TestId]

BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [Test3697Item]

BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [Test3697]

