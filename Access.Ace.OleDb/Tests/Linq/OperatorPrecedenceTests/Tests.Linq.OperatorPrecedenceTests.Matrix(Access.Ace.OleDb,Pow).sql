-- Access.Ace.OleDb AccessOleDb
SELECT
	([r].[B] + [r].[C]) ^ 2,
	[r].[C] ^ ([r].[B] + [r].[C]),
	[r].[B] ^ 2 + [r].[C],
	([r].[B] - [r].[C]) ^ 2,
	[r].[C] ^ ([r].[B] - [r].[C]),
	[r].[B] ^ 2 - [r].[C],
	([r].[B] * [r].[C]) ^ 2,
	[r].[C] ^ ([r].[B] * [r].[C]),
	[r].[B] ^ 2 * [r].[C],
	Fix([r].[B] / [r].[C]) ^ 2,
	[r].[C] ^ Fix([r].[B] / [r].[C]),
	[r].[B] ^ 2 / [r].[C],
	(-[r].[B]) ^ 2,
	-([r].[B] ^ 2),
	[r].[C] ^ ([r].[C] ^ [r].[C]),
	[r].[C] ^ (-[r].[B]) ^ [r].[C],
	([r].[B] + [r].[C]) ^ 2
FROM
	[PrecedenceRow] [r]
ORDER BY
	[r].[Id]

