BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [Test3664]

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [Test3664]
(
	[Id] Int NOT NULL,

	CONSTRAINT [PK_Test3664] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1

INSERT INTO [Test3664]
(
	[Id]
)
VALUES
(
	?
)

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [Test3664Item]

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [Test3664Item]
(
	[Id]     Int NOT NULL,
	[TestId] Int NOT NULL,

	CONSTRAINT [PK_Test3664Item] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 11
DECLARE @TestId Int -- Int32
SET     @TestId = 1

INSERT INTO [Test3664Item]
(
	[Id],
	[TestId]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 12
DECLARE @TestId Int -- Int32
SET     @TestId = 1

INSERT INTO [Test3664Item]
(
	[Id],
	[TestId]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @id Int -- Int32
SET     @id = 11

SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[TestId]
FROM
	[Test3664] [m_1]
		INNER JOIN [Test3664Item] [d] ON ([m_1].[Id] = [d].[TestId])
WHERE
	[d].[Id] = ?

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[t1].[Id]
FROM
	[Test3664] [t1]

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @id Int -- Int32
SET     @id = 12

SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[TestId]
FROM
	[Test3664] [m_1]
		INNER JOIN [Test3664Item] [d] ON ([m_1].[Id] = [d].[TestId])
WHERE
	[d].[Id] = ?

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[t1].[Id]
FROM
	[Test3664] [t1]

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [Test3664Item]

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [Test3664]

