-- SqlServer.2016

SELECT
	[e].[Id]
FROM
	[SqlConcatTestEntity] [e]
WHERE
	[e].[Str1] + N' ' + [e].[StrReq] + N'!' = N'John Programmer!'

-- SqlServer.2016

SELECT
	[t1].[Id],
	[t1].[Str1],
	[t1].[Str2],
	[t1].[StrReq],
	[t1].[Num]
FROM
	[SqlConcatTestEntity] [t1]

