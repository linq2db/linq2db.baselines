-- Access.Jet.OleDb AccessOleDb
SELECT
	IIF([s].[Kind] = 'C1', [s].[Kind], NULL)
FROM
	[Parent] [x]
		INNER JOIN [SourceSchemaShape] [s] ON ([x].[ParentID] = [s].[Id])
ORDER BY
	[s].[Id]

