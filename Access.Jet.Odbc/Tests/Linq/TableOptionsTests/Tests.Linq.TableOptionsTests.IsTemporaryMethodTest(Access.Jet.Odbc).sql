-- Access.Jet.Odbc AccessODBC

DROP TABLE [TestTable]

-- Access.Jet.Odbc AccessODBC

CREATE TABLE [TestTable]
(
	[Id]    Int NOT NULL,
	[Value] Int NOT NULL,

	CONSTRAINT [PK_TestTable] PRIMARY KEY CLUSTERED ([Id])
)

-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[Value] as [Value_1],
	[t1].[Id] as [Id_1],
	[t1].[Value] as [Value_2],
	[t1].[Id] as [Id_2],
	[t1].[Value] as [Value_3]
FROM
	[TestTable] [t1]

-- Access.Jet.Odbc AccessODBC

DROP TABLE [TestTable]

