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
SET     @Fd = 2
DECLARE @Id Int -- Int32
SET     @Id = 1

/* My Test */
UPDATE
	[TestTable]
SET
	[Fd] = @Fd
WHERE
	[TestTable].[Id] = @Id

BeforeExecute
-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Fd Int -- Int32
SET     @Fd = 2

/* My Test */
INSERT INTO [TestTable]
(
	[Id],
	[Fd]
)
VALUES
(
	@Id,
	@Fd
)

BeforeExecute
-- SqlCe

DROP TABLE [TestTable]

