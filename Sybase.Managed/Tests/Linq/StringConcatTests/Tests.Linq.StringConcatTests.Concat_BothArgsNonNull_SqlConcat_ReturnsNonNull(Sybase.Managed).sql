-- Sybase.Managed Sybase

SELECT
	[e].[Id]
FROM
	[ConcatTestEntity] [e]
WHERE
	(CASE WHEN [e].[StrReq] IS NULL OR [e].[StrReq] IS NULL THEN NULL ELSE [e].[StrReq] + [e].[StrReq] END) IS NOT NULL

-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[Str1],
	[t1].[Str2],
	[t1].[StrReq],
	[t1].[Num]
FROM
	[ConcatTestEntity] [t1]

