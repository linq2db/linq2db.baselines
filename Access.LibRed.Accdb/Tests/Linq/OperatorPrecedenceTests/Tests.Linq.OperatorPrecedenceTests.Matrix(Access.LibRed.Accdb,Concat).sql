-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	CASE
		WHEN [r].[S] IS NULL THEN ''
		ELSE [r].[S]
	END + CStr([r].[A] + [r].[B]),
	CStr([r].[A] + [r].[B]) + CASE
		WHEN [r].[S] IS NULL THEN ''
		ELSE [r].[S]
	END,
	CONCAT_WS(',', CASE
		WHEN [r].[S] IS NULL THEN ''
		ELSE [r].[S]
	END, [r].[B] + [r].[C], [r].[C]),
	CASE
		WHEN [r].[S] IS NULL THEN ''
		ELSE [r].[S]
	END + CASE
		WHEN [r].[S] IS NULL THEN ''
		ELSE [r].[S]
	END + CStr([r].[A] + [r].[B]),
	CONCAT_WS(',', CASE
		WHEN [r].[S] IS NULL THEN ''
		ELSE [r].[S]
	END, -([r].[B] + [r].[C]), [r].[C]),
	CONCAT_WS(',', CASE
		WHEN [r].[S] IS NULL THEN ''
		ELSE [r].[S]
	END, -1 - ([r].[B] + [r].[C]), [r].[C]),
	CASE
		WHEN [r].[S] IS NULL THEN ''
		ELSE [r].[S]
	END + CStr([r].[A] - [r].[B]),
	CStr([r].[A] - [r].[B]) + CASE
		WHEN [r].[S] IS NULL THEN ''
		ELSE [r].[S]
	END,
	CONCAT_WS(',', CASE
		WHEN [r].[S] IS NULL THEN ''
		ELSE [r].[S]
	END, [r].[B] - [r].[C], [r].[C]),
	CASE
		WHEN [r].[S] IS NULL THEN ''
		ELSE [r].[S]
	END + CASE
		WHEN [r].[S] IS NULL THEN ''
		ELSE [r].[S]
	END + CStr([r].[A] - [r].[B]),
	CONCAT_WS(',', CASE
		WHEN [r].[S] IS NULL THEN ''
		ELSE [r].[S]
	END, -([r].[B] - [r].[C]), [r].[C]),
	CONCAT_WS(',', CASE
		WHEN [r].[S] IS NULL THEN ''
		ELSE [r].[S]
	END, -1 - ([r].[B] - [r].[C]), [r].[C]),
	CASE
		WHEN [r].[S] IS NULL THEN ''
		ELSE [r].[S]
	END + CStr([r].[A] * [r].[B]),
	CStr([r].[A] * [r].[B]) + CASE
		WHEN [r].[S] IS NULL THEN ''
		ELSE [r].[S]
	END,
	CONCAT_WS(',', CASE
		WHEN [r].[S] IS NULL THEN ''
		ELSE [r].[S]
	END, [r].[B] * [r].[C], [r].[C]),
	CASE
		WHEN [r].[S] IS NULL THEN ''
		ELSE [r].[S]
	END + CASE
		WHEN [r].[S] IS NULL THEN ''
		ELSE [r].[S]
	END + CStr([r].[A] * [r].[B]),
	CONCAT_WS(',', CASE
		WHEN [r].[S] IS NULL THEN ''
		ELSE [r].[S]
	END, -([r].[B] * [r].[C]), [r].[C]),
	CONCAT_WS(',', CASE
		WHEN [r].[S] IS NULL THEN ''
		ELSE [r].[S]
	END, -1 - [r].[B] * [r].[C], [r].[C]),
	CASE
		WHEN [r].[S] IS NULL THEN ''
		ELSE [r].[S]
	END + CStr(Fix([r].[A] / [r].[B])),
	CStr(Fix([r].[A] / [r].[B])) + CASE
		WHEN [r].[S] IS NULL THEN ''
		ELSE [r].[S]
	END,
	CONCAT_WS(',', CASE
		WHEN [r].[S] IS NULL THEN ''
		ELSE [r].[S]
	END, Fix([r].[B] / [r].[C]), [r].[C]),
	CASE
		WHEN [r].[S] IS NULL THEN ''
		ELSE [r].[S]
	END + CASE
		WHEN [r].[S] IS NULL THEN ''
		ELSE [r].[S]
	END + CStr(Fix([r].[A] / [r].[B])),
	CONCAT_WS(',', CASE
		WHEN [r].[S] IS NULL THEN ''
		ELSE [r].[S]
	END, -Fix([r].[B] / [r].[C]), [r].[C]),
	CONCAT_WS(',', CASE
		WHEN [r].[S] IS NULL THEN ''
		ELSE [r].[S]
	END, -1 - Fix([r].[B] / [r].[C]), [r].[C]),
	CASE
		WHEN [r].[S] IS NULL THEN ''
		ELSE [r].[S]
	END + CStr([r].[A] MOD [r].[B]),
	CStr([r].[A] MOD [r].[B]) + CASE
		WHEN [r].[S] IS NULL THEN ''
		ELSE [r].[S]
	END,
	CONCAT_WS(',', CASE
		WHEN [r].[S] IS NULL THEN ''
		ELSE [r].[S]
	END, [r].[B] MOD [r].[C], [r].[C]),
	CASE
		WHEN [r].[S] IS NULL THEN ''
		ELSE [r].[S]
	END + CASE
		WHEN [r].[S] IS NULL THEN ''
		ELSE [r].[S]
	END + CStr([r].[A] MOD [r].[B]),
	CONCAT_WS(',', CASE
		WHEN [r].[S] IS NULL THEN ''
		ELSE [r].[S]
	END, -([r].[B] MOD [r].[C]), [r].[C]),
	CONCAT_WS(',', CASE
		WHEN [r].[S] IS NULL THEN ''
		ELSE [r].[S]
	END, -1 - [r].[B] MOD [r].[C], [r].[C]),
	CASE
		WHEN [r].[S] IS NULL THEN ''
		ELSE [r].[S]
	END + CStr([r].[A] BAND [r].[B]),
	CStr([r].[A] BAND [r].[B]) + CASE
		WHEN [r].[S] IS NULL THEN ''
		ELSE [r].[S]
	END,
	CONCAT_WS(',', CASE
		WHEN [r].[S] IS NULL THEN ''
		ELSE [r].[S]
	END, [r].[B] BAND [r].[C], [r].[C]),
	CASE
		WHEN [r].[S] IS NULL THEN ''
		ELSE [r].[S]
	END + CASE
		WHEN [r].[S] IS NULL THEN ''
		ELSE [r].[S]
	END + CStr([r].[A] BAND [r].[B]),
	CONCAT_WS(',', CASE
		WHEN [r].[S] IS NULL THEN ''
		ELSE [r].[S]
	END, -([r].[B] BAND [r].[C]), [r].[C]),
	CONCAT_WS(',', CASE
		WHEN [r].[S] IS NULL THEN ''
		ELSE [r].[S]
	END, -1 - ([r].[B] BAND [r].[C]), [r].[C]),
	CASE
		WHEN [r].[S] IS NULL THEN ''
		ELSE [r].[S]
	END + CStr([r].[A] BOR [r].[B]),
	CStr([r].[A] BOR [r].[B]) + CASE
		WHEN [r].[S] IS NULL THEN ''
		ELSE [r].[S]
	END,
	CONCAT_WS(',', CASE
		WHEN [r].[S] IS NULL THEN ''
		ELSE [r].[S]
	END, [r].[B] BOR [r].[C], [r].[C]),
	CASE
		WHEN [r].[S] IS NULL THEN ''
		ELSE [r].[S]
	END + CASE
		WHEN [r].[S] IS NULL THEN ''
		ELSE [r].[S]
	END + CStr([r].[A] BOR [r].[B]),
	CONCAT_WS(',', CASE
		WHEN [r].[S] IS NULL THEN ''
		ELSE [r].[S]
	END, -([r].[B] BOR [r].[C]), [r].[C]),
	CONCAT_WS(',', CASE
		WHEN [r].[S] IS NULL THEN ''
		ELSE [r].[S]
	END, -1 - ([r].[B] BOR [r].[C]), [r].[C]),
	CASE
		WHEN [r].[S] IS NULL THEN ''
		ELSE [r].[S]
	END + CStr([r].[A] BXOR [r].[B]),
	CStr([r].[A] BXOR [r].[B]) + CASE
		WHEN [r].[S] IS NULL THEN ''
		ELSE [r].[S]
	END,
	CONCAT_WS(',', CASE
		WHEN [r].[S] IS NULL THEN ''
		ELSE [r].[S]
	END, [r].[B] BXOR [r].[C], [r].[C]),
	CASE
		WHEN [r].[S] IS NULL THEN ''
		ELSE [r].[S]
	END + CASE
		WHEN [r].[S] IS NULL THEN ''
		ELSE [r].[S]
	END + CStr([r].[A] BXOR [r].[B]),
	CONCAT_WS(',', CASE
		WHEN [r].[S] IS NULL THEN ''
		ELSE [r].[S]
	END, -([r].[B] BXOR [r].[C]), [r].[C]),
	CONCAT_WS(',', CASE
		WHEN [r].[S] IS NULL THEN ''
		ELSE [r].[S]
	END, -1 - ([r].[B] BXOR [r].[C]), [r].[C]),
	CASE
		WHEN [r].[S] IS NULL THEN ''
		ELSE [r].[S]
	END + CStr(-[r].[A]),
	CStr(-[r].[A]) + CASE
		WHEN [r].[S] IS NULL THEN ''
		ELSE [r].[S]
	END,
	CASE
		WHEN [r].[S] IS NULL THEN ''
		ELSE [r].[S]
	END + CStr(-1 - [r].[A]),
	CStr(-1 - [r].[A]) + CASE
		WHEN [r].[S] IS NULL THEN ''
		ELSE [r].[S]
	END,
	CASE
		WHEN [r].[S] IS NULL THEN ''
		ELSE [r].[S]
	END + '-5',
	'-5' + CASE
		WHEN [r].[S] IS NULL THEN ''
		ELSE [r].[S]
	END
FROM
	[PrecedenceRow] [r]
ORDER BY
	[r].[Id]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	CASE
		WHEN [r].[S] IS NULL THEN ''
		ELSE [r].[S]
	END + '-5',
	'-5' + CASE
		WHEN [r].[S] IS NULL THEN ''
		ELSE [r].[S]
	END
FROM
	[PrecedenceRow] [r]
ORDER BY
	[r].[Id]

