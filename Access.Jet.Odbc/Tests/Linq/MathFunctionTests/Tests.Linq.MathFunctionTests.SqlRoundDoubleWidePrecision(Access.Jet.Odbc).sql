-- Access.Jet.Odbc AccessODBC
SELECT
	Sgn([r].[F]) * ((Int(Abs([r].[F]) * (10 ^ [r].[P])) + Int((Abs([r].[F]) * (10 ^ [r].[P]) - Int(Abs([r].[F]) * (10 ^ [r].[P]))) * 2)) / (10 ^ [r].[P]))
FROM
	[ResidueValues] [r]
ORDER BY
	[r].[Id]

