BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [TestTable]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [TestTable]
(
	[Id]    Int NOT NULL,
	[Value] Int NOT NULL,

	CONSTRAINT [PK_TestTable] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[Value],
	[t1].[Id],
	[t1].[Value],
	[t1].[Id],
	[t1].[Value]
FROM
	[TestTable] [t1]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [TestTable]

