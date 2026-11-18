-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	CASE
		WHEN [e].[Str1] IS NULL THEN ''
		ELSE [e].[Str1]
	END + '/' + CASE
		WHEN [e].[StrReq] IS NULL THEN ''
		ELSE [e].[StrReq]
	END
FROM
	[ConcatTestEntity] [e]
ORDER BY
	[e].[Id]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[t1].[Id],
	[t1].[Str1],
	[t1].[Str2],
	[t1].[StrReq],
	[t1].[Num]
FROM
	[ConcatTestEntity] [t1]

