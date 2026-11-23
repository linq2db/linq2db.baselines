-- Access.Ace.Odbc AccessODBC
SELECT
	Fix(([r].[A] + [r].[B]) / [r].[C]),
	Fix([r].[A] / ([r].[B] + [r].[C])),
	Fix(([r].[A] + [r].[B]) / [r].[C]),
	Fix([r].[A] / ([r].[B] + [r].[C])),
	Fix(([r].[A] - [r].[B]) / [r].[C]),
	Fix([r].[A] / ([r].[B] - [r].[C])),
	Fix(([r].[A] - [r].[B]) / [r].[C]),
	Fix([r].[A] / ([r].[B] - [r].[C])),
	Fix([r].[A] / ([r].[B] * [r].[C])),
	Fix([r].[A] / ([r].[B] * [r].[C])),
	Fix(Fix([r].[A] / [r].[B]) / [r].[C]),
	Fix([r].[A] / Fix([r].[B] / [r].[C])),
	Fix(Fix([r].[A] / [r].[B]) / [r].[C]),
	Fix([r].[A] / Fix([r].[B] / [r].[C])),
	Fix([r].[A] / ([r].[B] BXOR [r].[C])),
	Fix([r].[A] / ([r].[B] BXOR [r].[C])),
	Fix(([r].[A] + [r].[B]) / [r].[C]),
	Fix([r].[A] / ([r].[B] + [r].[C])),
	Fix(([r].[A] + -6) / [r].[C]),
	Fix(([r].[A] - [r].[B]) / [r].[C]),
	Fix([r].[A] / ([r].[B] - [r].[C])),
	Fix(([r].[A] - -6) / [r].[C]),
	Fix(([r].[A] * [r].[B]) / [r].[C]),
	Fix([r].[A] / ([r].[B] * [r].[C])),
	Fix(([r].[A] * -6) / [r].[C]),
	Fix(([r].[A] / [r].[B]) / [r].[C]),
	Fix([r].[A] / ([r].[B] / [r].[C])),
	Fix(([r].[A] / -6) / [r].[C]),
	Fix(([r].[A] + [r].[B]) / [r].[C]),
	Fix([r].[A] / ([r].[B] + [r].[C])),
	Fix(([r].[A] + -6) / [r].[C]),
	Fix([r].[A] / -[r].[B]),
	Fix(([r].[A] - [r].[B]) / [r].[C]),
	Fix(([r].[A] + [r].[B]) / [r].[C]),
	Fix(Fix([r].[A] / -[r].[B]) / [r].[C]),
	Fix(([r].[A] BAND -[r].[B]) / [r].[C]),
	Fix(([r].[A] BXOR -[r].[B]) / [r].[C]),
	Fix([r].[A] * (-1 - [r].[B]) / [r].[C]),
	Fix([r].[A] * -5 / [r].[C]),
	Fix(([r].[A] BAND -5) / [r].[C])
FROM
	[PrecedenceRow] [r]
ORDER BY
	[r].[Id]

-- Access.Ace.Odbc AccessODBC
SELECT
	Fix([r].[A] * -5 / [r].[C]),
	Fix(([r].[A] BAND -5) / [r].[C])
FROM
	[PrecedenceRow] [r]
ORDER BY
	[r].[Id]

