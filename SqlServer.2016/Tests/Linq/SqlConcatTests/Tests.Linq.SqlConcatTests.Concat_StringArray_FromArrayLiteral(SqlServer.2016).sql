-- SqlServer.2016

SELECT
	[e].[Id]
FROM
	[SqlConcatTestEntity] [e]
WHERE
	([e].[StrReq] + N' I') = N'Programmer I'

-- SqlServer.2016

SELECT
	[t1].[Id],
	[t1].[Str1],
	[t1].[Str2],
	[t1].[StrReq],
	[t1].[Num]
FROM
	[SqlConcatTestEntity] [t1]

