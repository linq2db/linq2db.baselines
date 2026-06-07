-- Sybase.Managed Sybase

SELECT
	[e].[StrReq]
FROM
	[ConcatTestEntity] [e]
WHERE
	(Coalesce([e].[StrReq], '') || ' I') = 'Programmer I'

-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[Str1],
	[t1].[Str2],
	[t1].[StrReq],
	[t1].[Num]
FROM
	[ConcatTestEntity] [t1]

