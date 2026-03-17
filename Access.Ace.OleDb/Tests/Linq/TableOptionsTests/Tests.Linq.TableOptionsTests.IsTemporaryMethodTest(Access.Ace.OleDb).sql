-- Access.Ace.OleDb AccessOleDb

DROP TABLE [TestTable]

-- Access.Ace.OleDb AccessOleDb

CREATE TABLE [TestTable]
(
	[Id]    Int NOT NULL,
	[Value] Int NOT NULL,

	CONSTRAINT [PK_TestTable] PRIMARY KEY CLUSTERED ([Id])
)

-- Access.Ace.OleDb AccessOleDb

SELECT
	[t1].[Id],
	[t1].[Value],
	[t1].[Id],
	[t1].[Value],
	[t1].[Id],
	[t1].[Value]
FROM
	[TestTable] [t1]

-- Access.Ace.OleDb AccessOleDb

DROP TABLE [TestTable]

