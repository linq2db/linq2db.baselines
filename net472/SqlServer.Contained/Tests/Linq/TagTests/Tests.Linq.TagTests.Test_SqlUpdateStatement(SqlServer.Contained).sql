BeforeExecute
-- SqlServer.Contained SqlServer.2017

CREATE TABLE [TestTable]
(
	[Id] Int NOT NULL,
	[Fd] Int     NULL,

	CONSTRAINT [PK_TestTable] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- SqlServer.Contained SqlServer.2017

/* My Test */
UPDATE
	[t1]
SET
	[t1].[Id] = 1
FROM
	[TestTable] [t1]

BeforeExecute
-- SqlServer.Contained SqlServer.2017

DROP TABLE IF EXISTS [TestTable]

