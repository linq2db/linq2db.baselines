-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[r].[Id],
	Sgn([r].[D]) * (Int(Abs([r].[D])) + Int((Abs([r].[D]) - Int(Abs([r].[D]))) * 2)),
	Sgn([r].[D]) * ((Int(Abs([r].[D]) * CDec(10 ^ [r].[P])) + Int((Abs([r].[D]) * CDec(10 ^ [r].[P]) - Int(Abs([r].[D]) * CDec(10 ^ [r].[P]))) * 2)) / CDec(10 ^ [r].[P])),
	Round([r].[D], 0),
	Round([r].[D], [r].[P])
FROM
	[RoundValues] [r]
ORDER BY
	[r].[Id]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[t1].[Id],
	[t1].[D],
	[t1].[F],
	[t1].[P]
FROM
	[RoundValues] [t1]

