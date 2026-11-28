-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[r].[Id],
	ROUND([r].[D]),
	Round([r].[D], 0),
	Sgn([r].[D]) * (Int(Abs([r].[D])) + Int((Abs([r].[D]) - Int(Abs([r].[D]))) * 2))
FROM
	[HeadroomValues] [r]
ORDER BY
	[r].[Id]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[t1].[Id],
	[t1].[D]
FROM
	[HeadroomValues] [t1]

