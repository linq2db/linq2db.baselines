-- Access.Ace.Odbc AccessODBC
SELECT
	[r].[Id],
	Sgn([r].[D]) * Int(Abs([r].[D]) + 0.5),
	Sgn([r].[D]) * (Int(Abs([r].[D]) * (10 ^ [r].[P]) + 0.5) / (10 ^ [r].[P])),
	Round([r].[D], 0),
	Round([r].[D], [r].[P])
FROM
	[RoundValues] [r]
ORDER BY
	[r].[Id]

-- Access.Ace.Odbc AccessODBC
SELECT
	[t1].[Id],
	[t1].[D],
	[t1].[F],
	[t1].[P]
FROM
	[RoundValues] [t1]

