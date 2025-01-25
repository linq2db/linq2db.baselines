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
UPDATE
	[TestTable]
SET
	[Fd] = 2
WHERE
	[TestTable].[Id] = 1

BeforeExecute
-- SqlCe

/* My Test */
INSERT INTO [TestTable]
(
	[Id],
	[Fd]
)
VALUES
(
	1,
	2
)

BeforeExecute
-- SqlCe

DROP TABLE [TestTable]

