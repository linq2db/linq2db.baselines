-- Access.Jet.OleDb AccessOleDb
SELECT
	[r].[Id],
	Sgn([r].[F]) * (Int(Abs([r].[F])) + Int((Abs([r].[F]) - Int(Abs([r].[F]))) * 2)),
	Sgn([r].[F]) * ((Int(Abs([r].[F]) * (10 ^ [r].[P])) + Int((Abs([r].[F]) * (10 ^ [r].[P]) - Int(Abs([r].[F]) * (10 ^ [r].[P]))) * 2)) / (10 ^ [r].[P])),
	Round([r].[F], 0),
	Round([r].[F], [r].[P])
FROM
	[RoundValues] [r]
ORDER BY
	[r].[Id]

-- Access.Jet.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[D],
	[t1].[F],
	[t1].[P]
FROM
	[RoundValues] [t1]

