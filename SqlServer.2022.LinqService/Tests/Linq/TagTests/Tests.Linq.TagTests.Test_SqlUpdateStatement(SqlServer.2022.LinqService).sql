BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [TestTable]

BeforeExecute
-- SqlServer.2022

IF (OBJECT_ID(N'[TestTable]', N'U') IS NULL)
	CREATE TABLE [TestTable]
	(
		[Id] Int NOT NULL,
		[Fd] Int     NULL,

		CONSTRAINT [PK_TestTable] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2022

/* My Test */
UPDATE
	[TestTable]
SET
	[Fd] = 1

BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [TestTable]

