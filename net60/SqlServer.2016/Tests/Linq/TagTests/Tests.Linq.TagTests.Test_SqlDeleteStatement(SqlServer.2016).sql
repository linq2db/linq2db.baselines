BeforeExecute
-- SqlServer.2016

CREATE TABLE [TestTable]
(
	[Id] Int NOT NULL,
	[Fd] Int     NULL,

	CONSTRAINT [PK_TestTable] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- SqlServer.2016

/* My Test */
DELETE [t1]
FROM
	[TestTable] [t1]

BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [TestTable]

