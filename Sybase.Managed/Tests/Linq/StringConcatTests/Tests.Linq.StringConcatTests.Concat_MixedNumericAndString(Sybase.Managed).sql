-- Sybase.Managed Sybase

SELECT
	[e].[Id]
FROM
	[ConcatTestEntity] [e]
WHERE
	CAST([e].[Num] AS NVarChar(11)) + '-' + Coalesce([e].[StrReq], '') = '100-Programmer'

-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[Str1],
	[t1].[Str2],
	[t1].[StrReq],
	[t1].[Num]
FROM
	[ConcatTestEntity] [t1]

