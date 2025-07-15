BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [TestTable]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

CREATE TABLE [TestTable]
(
	[Id]    Int NOT NULL,
	[Value] Int NOT NULL
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[sub].[Id_1],
	[sub].[Value_1],
	[sub].[Id],
	[sub].[Value_2],
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
	) [sub]
		INNER JOIN [TestTable] [t3] ON ([sub].[Id] = [t3].[Id])
WHERE
	[sub].[Id_1] = [sub].[Id]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [TestTable]

