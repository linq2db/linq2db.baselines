-- Access.Ace.OleDb AccessOleDb
SELECT
	IIF([r].[S] IS NULL, '', [r].[S]) + CStr([r].[A] + [r].[B]),
	CStr([r].[A] + [r].[B]) + IIF([r].[S] IS NULL, '', [r].[S]),
	IIF([r].[S] IS NULL, '', [r].[S]) + ',' + CStr([r].[B] + [r].[C]) + ',' + CStr([r].[C]),
	IIF([r].[S] IS NULL, '', [r].[S]) + IIF([r].[S] IS NULL, '', [r].[S]) + CStr([r].[A] + [r].[B]),
	IIF([r].[S] IS NULL, '', [r].[S]) + CStr([r].[A] - [r].[B]),
	CStr([r].[A] - [r].[B]) + IIF([r].[S] IS NULL, '', [r].[S]),
	IIF([r].[S] IS NULL, '', [r].[S]) + ',' + CStr([r].[B] - [r].[C]) + ',' + CStr([r].[C]),
	IIF([r].[S] IS NULL, '', [r].[S]) + IIF([r].[S] IS NULL, '', [r].[S]) + CStr([r].[A] - [r].[B]),
	IIF([r].[S] IS NULL, '', [r].[S]) + CStr([r].[A] * [r].[B]),
	CStr([r].[A] * [r].[B]) + IIF([r].[S] IS NULL, '', [r].[S]),
	IIF([r].[S] IS NULL, '', [r].[S]) + ',' + CStr([r].[B] * [r].[C]) + ',' + CStr([r].[C]),
	IIF([r].[S] IS NULL, '', [r].[S]) + IIF([r].[S] IS NULL, '', [r].[S]) + CStr([r].[A] * [r].[B]),
	IIF([r].[S] IS NULL, '', [r].[S]) + CStr(Fix([r].[A] / [r].[B])),
	CStr(Fix([r].[A] / [r].[B])) + IIF([r].[S] IS NULL, '', [r].[S]),
	IIF([r].[S] IS NULL, '', [r].[S]) + ',' + CStr(Fix([r].[B] / [r].[C])) + ',' + CStr([r].[C]),
	IIF([r].[S] IS NULL, '', [r].[S]) + IIF([r].[S] IS NULL, '', [r].[S]) + CStr(Fix([r].[A] / [r].[B])),
	IIF([r].[S] IS NULL, '', [r].[S]) + CStr([r].[A] MOD [r].[B]),
	CStr([r].[A] MOD [r].[B]) + IIF([r].[S] IS NULL, '', [r].[S]),
	IIF([r].[S] IS NULL, '', [r].[S]) + ',' + CStr([r].[B] MOD [r].[C]) + ',' + CStr([r].[C]),
	IIF([r].[S] IS NULL, '', [r].[S]) + IIF([r].[S] IS NULL, '', [r].[S]) + CStr([r].[A] MOD [r].[B]),
	IIF([r].[S] IS NULL, '', [r].[S]) + CStr([r].[A] BAND [r].[B]),
	CStr([r].[A] BAND [r].[B]) + IIF([r].[S] IS NULL, '', [r].[S]),
	IIF([r].[S] IS NULL, '', [r].[S]) + ',' + CStr([r].[B] BAND [r].[C]) + ',' + CStr([r].[C]),
	IIF([r].[S] IS NULL, '', [r].[S]) + IIF([r].[S] IS NULL, '', [r].[S]) + CStr([r].[A] BAND [r].[B]),
	IIF([r].[S] IS NULL, '', [r].[S]) + CStr([r].[A] BOR [r].[B]),
	CStr([r].[A] BOR [r].[B]) + IIF([r].[S] IS NULL, '', [r].[S]),
	IIF([r].[S] IS NULL, '', [r].[S]) + ',' + CStr([r].[B] BOR [r].[C]) + ',' + CStr([r].[C]),
	IIF([r].[S] IS NULL, '', [r].[S]) + IIF([r].[S] IS NULL, '', [r].[S]) + CStr([r].[A] BOR [r].[B]),
	IIF([r].[S] IS NULL, '', [r].[S]) + CStr([r].[A] BXOR [r].[B]),
	CStr([r].[A] BXOR [r].[B]) + IIF([r].[S] IS NULL, '', [r].[S]),
	IIF([r].[S] IS NULL, '', [r].[S]) + ',' + CStr([r].[B] BXOR [r].[C]) + ',' + CStr([r].[C]),
	IIF([r].[S] IS NULL, '', [r].[S]) + IIF([r].[S] IS NULL, '', [r].[S]) + CStr([r].[A] BXOR [r].[B]),
	IIF([r].[S] IS NULL, '', [r].[S]) + CStr(-[r].[A]),
	CStr(-[r].[A]) + IIF([r].[S] IS NULL, '', [r].[S]),
	IIF([r].[S] IS NULL, '', [r].[S]) + CStr(-1 - [r].[A]),
	CStr(-1 - [r].[A]) + IIF([r].[S] IS NULL, '', [r].[S]),
	IIF([r].[S] IS NULL, '', [r].[S]) + '-5',
	'-5' + IIF([r].[S] IS NULL, '', [r].[S])
FROM
	[PrecedenceRow] [r]
ORDER BY
	[r].[Id]

-- Access.Ace.OleDb AccessOleDb
SELECT
	IIF([r].[S] IS NULL, '', [r].[S]) + '-5',
	'-5' + IIF([r].[S] IS NULL, '', [r].[S])
FROM
	[PrecedenceRow] [r]
ORDER BY
	[r].[Id]

