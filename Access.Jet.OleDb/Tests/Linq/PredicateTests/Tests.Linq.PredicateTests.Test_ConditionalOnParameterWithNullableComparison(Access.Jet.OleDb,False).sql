-- Access.Jet.OleDb AccessOleDb
SELECT
	[r].[Id],
	IIF(False, False, NULL)
FROM
	[NullableFlagTable] [r]

-- Access.Jet.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[A],
	[t1].[B],
	[t1].[C],
	[t1].[Flag]
FROM
	[NullableFlagTable] [t1]

