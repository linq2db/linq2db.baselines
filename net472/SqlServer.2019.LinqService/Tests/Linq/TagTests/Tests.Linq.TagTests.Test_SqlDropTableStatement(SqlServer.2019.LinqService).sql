BeforeExecute
-- SqlServer.2019

CREATE TABLE [TestTable]
(
	[Id] Int NOT NULL,
	[Fd] Int     NULL,

	CONSTRAINT [PK_TestTable] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- SqlServer.2019

/* My Test */
DROP TABLE [TestTable]

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [TestTable]

