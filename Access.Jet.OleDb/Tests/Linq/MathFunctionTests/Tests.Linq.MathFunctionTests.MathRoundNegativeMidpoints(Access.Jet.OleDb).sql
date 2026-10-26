-- Access.Jet.OleDb AccessOleDb
SELECT
	[r].[Id],
	ROUND([r].[D]),
	ROUND([r].[D]),
	Sgn([r].[D]) * Int(Abs([r].[D]) + 0.5),
	ROUND([r].[F]),
	ROUND([r].[F]),
	Sgn([r].[F]) * Int(Abs([r].[F]) + 0.5)
FROM
	[MidpointValues] [r]
ORDER BY
	[r].[Id]

-- Access.Jet.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[D],
	[t1].[F]
FROM
	[MidpointValues] [t1]

