-- Sybase.Managed Sybase

SELECT
	CASE
		WHEN [e].[Str1] IS NULL OR [e].[Str2] IS NULL THEN NULL
		ELSE [e].[Str1] + [e].[Str2]
	END
FROM
	[SqlConcatTestEntity] [e]
ORDER BY
	[e].[Id]

-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[Str1],
	[t1].[Str2],
	[t1].[StrReq],
	[t1].[Num]
FROM
	[SqlConcatTestEntity] [t1]

