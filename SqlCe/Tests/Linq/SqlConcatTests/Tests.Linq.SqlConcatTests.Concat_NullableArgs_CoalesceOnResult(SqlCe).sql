-- SqlCe

SELECT
	[e].[Str1] + [e].[Str2] as [Concat]
FROM
	[SqlConcatTestEntity] [e]
ORDER BY
	[e].[Id]

-- SqlCe

SELECT
	[t1].[Id],
	[t1].[Str1],
	[t1].[Str2],
	[t1].[StrReq],
	[t1].[Num]
FROM
	[SqlConcatTestEntity] [t1]

