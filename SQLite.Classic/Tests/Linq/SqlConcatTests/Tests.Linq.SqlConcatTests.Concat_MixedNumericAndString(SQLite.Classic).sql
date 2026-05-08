-- SQLite.Classic SQLite

SELECT
	[e].[Id]
FROM
	[SqlConcatTestEntity] [e]
WHERE
	CAST([e].[Num] AS NVarChar(11)) || '-' || [e].[StrReq] = '100-Programmer'

-- SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[Str1],
	[t1].[Str2],
	[t1].[StrReq],
	[t1].[Num]
FROM
	[SqlConcatTestEntity] [t1]

