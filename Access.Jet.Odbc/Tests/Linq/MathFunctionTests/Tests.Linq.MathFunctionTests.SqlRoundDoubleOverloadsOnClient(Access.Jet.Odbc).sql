-- Access.Jet.Odbc AccessODBC
SELECT
	[r].[Id],
	Sgn([r].[F]) * (Int(Abs([r].[F]) * (10 ^ [r].[P]) + 0.5) / (10 ^ [r].[P])),
	[r].[F],
	Round([r].[F], [r].[P])
FROM
	[RoundValues] [r]
ORDER BY
	[r].[Id]

-- Access.Jet.Odbc AccessODBC
SELECT
	[t1].[Id],
	[t1].[D],
	[t1].[F],
	[t1].[P]
FROM
	[RoundValues] [t1]

