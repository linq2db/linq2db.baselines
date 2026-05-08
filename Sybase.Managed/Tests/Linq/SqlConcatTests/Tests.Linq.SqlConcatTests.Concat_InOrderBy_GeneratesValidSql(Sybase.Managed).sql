-- Sybase.Managed Sybase

SELECT
	[e].[Id]
FROM
	[SqlConcatTestEntity] [e]
ORDER BY
	CASE
		WHEN [e].[StrReq] IS NULL THEN NULL
		ELSE [e].[StrReq] + 'X'
	END

-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[Str1],
	[t1].[Str2],
	[t1].[StrReq],
	[t1].[Num]
FROM
	[SqlConcatTestEntity] [t1]

