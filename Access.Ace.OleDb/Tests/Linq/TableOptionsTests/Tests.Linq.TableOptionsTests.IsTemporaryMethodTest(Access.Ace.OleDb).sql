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
	[t1].[Value] as [Value_1],
	[t1].[Id] as [Id_1],
	[t1].[Value] as [Value_2],
	[t1].[Id] as [Id_2],
	[t1].[Value] as [Value_3]
FROM
	[TestTable] [t1]

-- Access.Ace.OleDb AccessOleDb

DROP TABLE [TestTable]

