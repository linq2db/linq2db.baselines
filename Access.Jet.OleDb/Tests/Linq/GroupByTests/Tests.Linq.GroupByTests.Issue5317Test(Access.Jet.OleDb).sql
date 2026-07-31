-- Access.Jet.OleDb AccessOleDb
SELECT
	(
		SELECT TOP 1
			[a_Reference].[Name]
		FROM
			[TestTable] [t1]
				INNER JOIN [Reference] [a_Reference] ON ([t1].[ReferenceId] = [a_Reference].[Id])
		WHERE
			[g_1].[Id] = [t1].[Id]
	)
FROM
	[TestTable] [g_1]

-- Access.Jet.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Name],
	[t1].[ReferenceId],
	[a_Reference].[Id] as [Id_1],
	[a_Reference].[Name] as [Name_1]
FROM
	[TestTable] [t1]
		INNER JOIN [Reference] [a_Reference] ON ([t1].[ReferenceId] = [a_Reference].[Id])

-- Access.Jet.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Name],
	[t1].[ReferenceId]
FROM
	[TestTable] [t1]

