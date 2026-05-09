-- Sybase.Managed Sybase

SELECT
	[e].[Id]
FROM
	[SqlConcatTestEntity] [e]
WHERE
	NOT ([e].[Str1] IS NULL OR [e].[Str2] IS NULL)

-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[Str1],
	[t1].[Str2],
	[t1].[StrReq],
	[t1].[Num]
FROM
	[SqlConcatTestEntity] [t1]

