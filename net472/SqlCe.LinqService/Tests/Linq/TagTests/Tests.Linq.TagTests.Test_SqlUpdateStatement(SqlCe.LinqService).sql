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
UPDATE
	[TestTable]
SET
	[TestTable].[Id] = 1

BeforeExecute
-- SqlCe

DROP TABLE [TestTable]

