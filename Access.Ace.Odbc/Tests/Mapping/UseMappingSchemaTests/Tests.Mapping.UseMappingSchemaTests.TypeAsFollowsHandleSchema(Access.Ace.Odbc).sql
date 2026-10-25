-- Access.Ace.Odbc AccessODBC
SELECT
	IIF([c_1].[Kind] = 'C1', [c_1].[Kind], NULL)
FROM
	[SourceSchemaShape] [c_1]
ORDER BY
	[c_1].[Id]

