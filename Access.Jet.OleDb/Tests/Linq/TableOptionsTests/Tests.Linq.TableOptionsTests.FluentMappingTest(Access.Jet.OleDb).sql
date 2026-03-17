-- Access.Jet.OleDb AccessOleDb

DROP TABLE [TestTable]

-- Access.Jet.OleDb AccessOleDb

CREATE TABLE [TestTable]
(
	[Id]    Int NOT NULL,
	[Value] Int NOT NULL,

	CONSTRAINT [PK_TestTable] PRIMARY KEY CLUSTERED ([Id])
)

-- Access.Jet.OleDb AccessOleDb

SELECT
	[cross_1].[Id_1],
	[cross_1].[Value_1],
	[cross_1].[Id],
	[cross_1].[Value_2],
	[t3].[Id],
	[t3].[Value]
FROM
	(
		SELECT
			[t2].[Id],
			[t1].[Id] as [Id_1],
			[t1].[Value] as [Value_1],
			[t2].[Value] as [Value_2]
		FROM
			[TestTable] [t1],
			[TestTable] [t2]
	) [cross_1]
		INNER JOIN [TestTable] [t3] ON ([cross_1].[Id] = [t3].[Id])
WHERE
	[cross_1].[Id_1] = [cross_1].[Id]

-- Access.Jet.OleDb AccessOleDb

DROP TABLE [TestTable]

