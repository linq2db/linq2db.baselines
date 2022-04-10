BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

CREATE TABLE [TestTable]
(
	[Id] Int NOT NULL,
	[Fd] Int     NULL,

	CONSTRAINT [PK_TestTable] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

/* My Test */
UPDATE
	[t1]
SET
	[t1].[Id] = 1
FROM
	[TestTable] [t1]

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

DROP TABLE IF EXISTS [TestTable]

