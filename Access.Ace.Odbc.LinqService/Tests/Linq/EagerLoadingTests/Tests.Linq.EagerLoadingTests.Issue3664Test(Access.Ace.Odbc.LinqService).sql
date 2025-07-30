BeforeExecute
-- Access.Ace.Odbc AccessODBC
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
-- Access.Ace.Odbc AccessODBC
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
-- Access.Ace.Odbc AccessODBC

SELECT
	[t1].[Id]
FROM
	[Test3664] [t1]

BeforeExecute
-- Access.Ace.Odbc AccessODBC
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
-- Access.Ace.Odbc AccessODBC

SELECT
	[t1].[Id]
FROM
	[Test3664] [t1]

