-- Access.Jet.OleDb AccessOleDb
SELECT
	[r].[Id],
	RIGHT([r].[S], [r].[N])
FROM
	[RightValues] [r]
ORDER BY
	[r].[Id]

-- Access.Jet.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[S],
	[t1].[N]
FROM
	[RightValues] [t1]

-- Access.Jet.OleDb AccessOleDb
SELECT
	[r].[Id],
	[r].[S],
	[r].[N]
FROM
	[RightValues] [r]
WHERE
	RIGHT([r].[S], [r].[N]) = 'ohn'

-- Access.Jet.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[S],
	[t1].[N]
FROM
	[RightValues] [t1]

