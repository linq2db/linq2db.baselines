-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[t].[Id],
	CASE
		WHEN [t].[Str1] IS NULL THEN ''
		ELSE [t].[Str1]
	END + CASE
		WHEN [t].[Str2] IS NULL THEN ''
		ELSE [t].[Str2]
	END + CASE
		WHEN [t].[StrReq] IS NULL THEN ''
		ELSE [t].[StrReq]
	END
FROM
	[ConcatTestEntity] [t]
ORDER BY
	[t].[Id]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[t1].[Id],
	[t1].[Str1],
	[t1].[Str2],
	[t1].[StrReq],
	[t1].[Num]
FROM
	[ConcatTestEntity] [t1]

