-- Access.Ace.OleDb AccessOleDb
SELECT
	[r].[Id],
	IIF([r].[Flag] IS NULL, NULL, IIF([r].[A] = [r].[B] OR [r].[A] IS NULL AND [r].[B] IS NULL, True, False))
FROM
	[NullableFlagTable] [r]

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[A],
	[t1].[B],
	[t1].[C],
	[t1].[Flag]
FROM
	[NullableFlagTable] [t1]

