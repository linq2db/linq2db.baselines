-- Access.Ace.Odbc AccessODBC
SELECT
	([r].[A] + [r].[B]) MOD [r].[C],
	[r].[A] MOD ([r].[B] + [r].[C]),
	([r].[A] + [r].[B]) MOD [r].[C],
	[r].[A] MOD ([r].[B] + [r].[C]),
	([r].[A] - [r].[B]) MOD [r].[C],
	[r].[A] MOD ([r].[B] - [r].[C]),
	([r].[A] - [r].[B]) MOD [r].[C],
	[r].[A] MOD ([r].[B] - [r].[C]),
	Fix([r].[A] / [r].[B]) MOD [r].[C],
	Fix([r].[A] / [r].[B]) MOD [r].[C],
	[r].[A] MOD [r].[B] MOD [r].[C],
	[r].[A] MOD [r].[B] MOD [r].[C],
	([r].[A] BAND [r].[B]) MOD [r].[C],
	([r].[A] BAND [r].[B]) MOD [r].[C],
	([r].[A] BOR [r].[B]) MOD [r].[C],
	[r].[A] MOD ([r].[B] BOR [r].[C]),
	([r].[A] BOR [r].[B]) MOD [r].[C],
	[r].[A] MOD ([r].[B] BOR [r].[C]),
	([r].[A] BXOR [r].[B]) MOD [r].[C],
	[r].[A] MOD ([r].[B] BXOR [r].[C]),
	([r].[A] BXOR [r].[B]) MOD [r].[C],
	[r].[A] MOD ([r].[B] BXOR [r].[C]),
	([r].[A] + [r].[B]) MOD [r].[C],
	[r].[A] MOD ([r].[B] + [r].[C]),
	([r].[A] + -6) MOD [r].[C],
	([r].[A] - [r].[B]) MOD [r].[C],
	[r].[A] MOD ([r].[B] - [r].[C]),
	([r].[A] - -6) MOD [r].[C],
	[r].[A] * [r].[B] MOD [r].[C],
	[r].[A] MOD [r].[B] * [r].[C],
	[r].[A] * -6 MOD [r].[C],
	[r].[A] / [r].[B] MOD [r].[C],
	[r].[A] MOD [r].[B] / [r].[C],
	[r].[A] / -6 MOD [r].[C],
	([r].[A] + [r].[B]) MOD [r].[C],
	[r].[A] MOD ([r].[B] + [r].[C]),
	([r].[A] + -6) MOD [r].[C],
	[r].[A] MOD -[r].[B],
	([r].[A] - [r].[B]) MOD [r].[C],
	([r].[A] + [r].[B]) MOD [r].[C],
	Fix([r].[A] / -[r].[B]) MOD [r].[C],
	[r].[A] MOD -[r].[B] MOD [r].[C],
	([r].[A] BOR -[r].[B]) MOD [r].[C],
	([r].[A] BXOR -[r].[B]) MOD [r].[C],
	[r].[A] MOD (-1 - [r].[B]),
	([r].[A] + (-1 - [r].[B])) MOD [r].[C],
	([r].[A] - (-1 - [r].[B])) MOD [r].[C],
	[r].[A] * (-1 - [r].[B]) MOD [r].[C],
	[r].[A] MOD (-1 - [r].[B]) MOD [r].[C],
	([r].[A] BAND (-1 - [r].[B])) MOD [r].[C],
	([r].[A] BOR (-1 - [r].[B])) MOD [r].[C],
	([r].[A] BXOR (-1 - [r].[B])) MOD [r].[C],
	[r].[A] MOD -5,
	-5 MOD [r].[C],
	([r].[A] + -5) MOD [r].[C],
	([r].[A] - -5) MOD [r].[C],
	[r].[A] * -5 MOD [r].[C],
	[r].[A] MOD -5 MOD [r].[C],
	([r].[A] BAND -5) MOD [r].[C],
	([r].[A] BOR -5) MOD [r].[C],
	([r].[A] BXOR -5) MOD [r].[C]
FROM
	[PrecedenceRow] [r]
ORDER BY
	[r].[Id]

-- Access.Ace.Odbc AccessODBC
SELECT
	[r].[A] MOD -5,
	-5 MOD [r].[C],
	([r].[A] + -5) MOD [r].[C],
	([r].[A] - -5) MOD [r].[C],
	[r].[A] * -5 MOD [r].[C],
	[r].[A] MOD -5 MOD [r].[C],
	([r].[A] BAND -5) MOD [r].[C],
	([r].[A] BOR -5) MOD [r].[C],
	([r].[A] BXOR -5) MOD [r].[C]
FROM
	[PrecedenceRow] [r]
ORDER BY
	[r].[Id]

