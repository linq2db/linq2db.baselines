-- SQLite.Classic SQLite

SELECT
	[e].[Id]
FROM
	[ConcatTestEntity] [e]
ORDER BY
	Coalesce([e].[StrReq], '') || 'X'

-- SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[Str1],
	[t1].[Str2],
	[t1].[StrReq],
	[t1].[Num]
FROM
	[ConcatTestEntity] [t1]

