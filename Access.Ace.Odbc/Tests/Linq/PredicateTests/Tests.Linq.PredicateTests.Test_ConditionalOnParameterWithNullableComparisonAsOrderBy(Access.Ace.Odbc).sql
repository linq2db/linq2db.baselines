-- Access.Ace.Odbc AccessODBC
SELECT
	[r].[Id]
FROM
	[NullableFlagTable] [r]
ORDER BY
	(IIF([r].[A] = [r].[B] OR [r].[A] IS NULL AND [r].[B] IS NULL, True, False)) DESC,
	[r].[Id]

