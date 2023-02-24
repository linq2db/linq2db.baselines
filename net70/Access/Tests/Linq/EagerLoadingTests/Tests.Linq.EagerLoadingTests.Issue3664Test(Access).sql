BeforeExecute
-- Access AccessOleDb

DROP TABLE [Test3664]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [Test3664]
(
	[Id] Int NOT NULL,

	CONSTRAINT [PK_Test3664] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1

INSERT INTO [Test3664]
(
	[Id]
)
VALUES
(
	@Id
)

BeforeExecute
-- Access AccessOleDb

DROP TABLE [Test3664Item]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [Test3664Item]
(
	[Id]     Int NOT NULL,
	[TestId] Int NOT NULL,

	CONSTRAINT [PK_Test3664Item] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 11
DECLARE @TestId Integer -- Int32
SET     @TestId = 1

INSERT INTO [Test3664Item]
(
	[Id],
	[TestId]
)
VALUES
(
	@Id,
	@TestId
)

BeforeExecute
-- Access AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 12
DECLARE @TestId Integer -- Int32
SET     @TestId = 1

INSERT INTO [Test3664Item]
(
	[Id],
	[TestId]
)
VALUES
(
	@Id,
	@TestId
)

BeforeExecute
BeginTransaction(Unspecified)
BeforeExecute
-- Access AccessOleDb
DECLARE @id Integer -- Int32
SET     @id = 11

SELECT
	[lw_Test3664].[Id],
	[a].[Id],
	[a].[TestId]
FROM
	[Test3664] [lw_Test3664]
		INNER JOIN [Test3664Item] [a] ON ([lw_Test3664].[Id] = [a].[TestId] AND [a].[Id] = @id)

BeforeExecute
DisposeTransaction
BeforeExecute
-- Access AccessOleDb

SELECT
	[t1].[Id]
FROM
	[Test3664] [t1]

BeforeExecute
BeginTransaction(Unspecified)
BeforeExecute
-- Access AccessOleDb
DECLARE @id Integer -- Int32
SET     @id = 12

SELECT
	[lw_Test3664].[Id],
	[a].[Id],
	[a].[TestId]
FROM
	[Test3664] [lw_Test3664]
		INNER JOIN [Test3664Item] [a] ON ([lw_Test3664].[Id] = [a].[TestId] AND [a].[Id] = @id)

BeforeExecute
DisposeTransaction
BeforeExecute
-- Access AccessOleDb

SELECT
	[t1].[Id]
FROM
	[Test3664] [t1]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [Test3664Item]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [Test3664]

