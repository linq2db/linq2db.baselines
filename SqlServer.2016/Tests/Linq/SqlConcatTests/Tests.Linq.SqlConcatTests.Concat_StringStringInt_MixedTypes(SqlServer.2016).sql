-- SqlServer.2016

SELECT
	[e].[StrReq]
FROM
	[SqlConcatTestEntity] [e]
WHERE
	([e].[StrReq] + N' 1') = N'Programmer 1'

-- SqlServer.2016

SELECT
	[t1].[Id],
	[t1].[Str1],
	[t1].[Str2],
	[t1].[StrReq],
	[t1].[Num]
FROM
	[SqlConcatTestEntity] [t1]

