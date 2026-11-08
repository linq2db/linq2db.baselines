-- Access.Ace.Odbc AccessODBC
SELECT
	[s].[Id],
	IIF([s].[Kind] = 'C1', [s].[Kind], NULL)
FROM
	[Parent] [x]
		INNER JOIN [SourceSchemaShape] [s] ON ([x].[ParentID] = [s].[Id])

