-- Access.Ace.OleDb AccessOleDb
SELECT
	-1 - ([r].[A] + [r].[B]),
	-1 - ([r].[A] + [r].[B]),
	-1 - ([r].[A] - [r].[B]),
	-1 - ([r].[A] - [r].[B]),
	-1 - [r].[A] * [r].[B],
	-1 - [r].[A] * [r].[B],
	-1 - Fix([r].[A] / [r].[B]),
	-1 - Fix([r].[A] / [r].[B]),
	-1 - ([r].[A] BAND [r].[B]),
	-1 - ([r].[A] BAND [r].[B]),
	-1 - ([r].[A] BOR [r].[B]),
	-1 - ([r].[A] BOR [r].[B]),
	-1 + [r].[B],
	-1 - (-1 - [r].[B]),
	4,
	-1 - -5 * [r].[B]
FROM
	[PrecedenceRow] [r]
ORDER BY
	[r].[Id]

-- Access.Ace.OleDb AccessOleDb
SELECT
	4
FROM
	[PrecedenceRow] [r]
ORDER BY
	[r].[Id]

