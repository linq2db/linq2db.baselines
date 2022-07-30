BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

DROP TABLE IF EXISTS [TestTable]

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

IF (OBJECT_ID(N'[TestTable]', N'U') IS NULL)
	CREATE TABLE [TestTable]
	(
		[Id] Int NOT NULL,
		[Fd] Int     NULL,

		CONSTRAINT [PK_TestTable] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

/* My Test */
SELECT
	[t1].[Id],
	[t1].[Fd]
FROM
	[TestTable] [t1]

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

DROP TABLE IF EXISTS [TestTable]

