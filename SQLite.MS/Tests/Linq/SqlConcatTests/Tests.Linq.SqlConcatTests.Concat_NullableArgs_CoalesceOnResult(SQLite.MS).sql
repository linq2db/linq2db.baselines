-- SQLite.MS SQLite

SELECT
	[e].[Str1] || [e].[Str2]
FROM
	[SqlConcatTestEntity] [e]
ORDER BY
	[e].[Id]

-- SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[Str1],
	[t1].[Str2],
	[t1].[StrReq],
	[t1].[Num]
FROM
	[SqlConcatTestEntity] [t1]

