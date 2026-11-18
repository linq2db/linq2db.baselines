-- Access.Ace.OleDb AccessOleDb
SELECT
	[r].[Id],
	IIF(False, False, NULL)
FROM
	[NullableFlagTable] [r]
ORDER BY
	[r].[Id]

