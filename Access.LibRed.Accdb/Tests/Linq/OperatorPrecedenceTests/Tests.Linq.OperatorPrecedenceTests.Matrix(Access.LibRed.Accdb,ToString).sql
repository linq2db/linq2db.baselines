-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	CStr([r].[A] + [r].[B]),
	CStr([r].[A] - [r].[B]),
	CStr([r].[A] * [r].[B]),
	CStr(Fix([r].[A] / [r].[B])),
	CStr([r].[A] MOD [r].[B]),
	CStr([r].[A] BAND [r].[B]),
	CStr([r].[A] BOR [r].[B]),
	CStr([r].[A] BXOR [r].[B]),
	CStr(-[r].[A]),
	CStr(-1 - [r].[A])
FROM
	[PrecedenceRow] [r]
ORDER BY
	[r].[Id]

