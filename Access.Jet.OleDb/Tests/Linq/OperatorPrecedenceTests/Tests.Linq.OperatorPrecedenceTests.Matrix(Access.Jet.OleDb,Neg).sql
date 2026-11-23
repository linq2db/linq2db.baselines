-- Access.Jet.OleDb AccessOleDb
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

-- Access.Jet.OleDb AccessOleDb
SELECT
	-(-5)
FROM
	[PrecedenceRow] [r]
ORDER BY
	[r].[Id]

