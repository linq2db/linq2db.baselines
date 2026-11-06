-- Access.Ace.Odbc AccessODBC
SELECT
	[r].[Id],
	IIF(False, False, NULL)
FROM
	[NullableFlagTable] [r]
ORDER BY
	[r].[Id]

