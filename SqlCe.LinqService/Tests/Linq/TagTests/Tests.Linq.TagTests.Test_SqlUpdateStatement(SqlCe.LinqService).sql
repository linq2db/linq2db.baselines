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
DECLARE @Fd Int -- Int32
SET     @Fd = 1

/* My Test */
UPDATE
	[TestTable]
SET
	[Fd] = @Fd

BeforeExecute
-- SqlCe

DROP TABLE [TestTable]

