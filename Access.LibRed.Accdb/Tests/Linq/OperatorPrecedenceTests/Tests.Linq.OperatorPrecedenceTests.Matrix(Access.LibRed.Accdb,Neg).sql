-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	-([r].[A] + [r].[B]),
	-([r].[A] + [r].[B]),
	-([r].[A] - [r].[B]),
	-([r].[A] - [r].[B]),
	-([r].[A] BAND [r].[B]),
	-([r].[A] BAND [r].[B]),
	-([r].[A] BOR [r].[B]),
	-([r].[A] BOR [r].[B]),
	-([r].[A] BXOR [r].[B]),
	-([r].[A] BXOR [r].[B]),
	[r].[B],
	-(-1 - [r].[B]),
	-(-5),
	-(-5 * [r].[B])
FROM
	[PrecedenceRow] [r]
ORDER BY
	[r].[Id]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	-(-5)
FROM
	[PrecedenceRow] [r]
ORDER BY
	[r].[Id]

