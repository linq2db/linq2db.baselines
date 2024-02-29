BeforeExecute
-- SqlCe

DROP TABLE [TestTable]

BeforeExecute
-- SqlCe

CREATE TABLE [TestTable]
(
	[Id] Int NOT NULL,
	[Fd] Int     NULL,

	CONSTRAINT [PK_TestTable] PRIMARY KEY ([Id])
)

BeforeExecute
-- SqlCe

/* My Test */
SELECT
	[t1].[Id],
	[t1].[Fd]
FROM
	[TestTable] [t1]

BeforeExecute
-- SqlCe

DROP TABLE [TestTable]

