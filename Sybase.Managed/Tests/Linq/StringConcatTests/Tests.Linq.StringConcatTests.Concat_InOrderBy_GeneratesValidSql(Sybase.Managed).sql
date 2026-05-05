-- Sybase.Managed Sybase

SELECT
	[e].[Id]
FROM
	[ConcatTestEntity] [e]
ORDER BY
	Coalesce([e].[StrReq], '') + 'X'

-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[Str1],
	[t1].[Str2],
	[t1].[StrReq],
	[t1].[Num]
FROM
	[ConcatTestEntity] [t1]

