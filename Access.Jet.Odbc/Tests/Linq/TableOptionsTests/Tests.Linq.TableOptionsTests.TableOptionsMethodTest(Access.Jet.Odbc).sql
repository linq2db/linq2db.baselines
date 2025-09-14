BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [TestTable]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

CREATE TABLE [TestTable]
(
	[Id]    Int NOT NULL,
	[Value] Int NOT NULL,

	CONSTRAINT [PK_TestTable] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[Value],
	[t2].[Id],
	[t2].[Value],
	[t2].[Id],
	[t2].[Value]
FROM
	[TestTable] [t1],
	[TestTable] [t2]
WHERE
	[t1].[Id] = [t2].[Id]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [TestTable]

