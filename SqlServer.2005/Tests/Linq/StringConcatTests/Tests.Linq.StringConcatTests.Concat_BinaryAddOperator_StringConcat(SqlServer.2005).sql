-- SqlServer.2005

SELECT
	[e].[StrReq]
FROM
	[ConcatTestEntity] [e]
WHERE
	[e].[StrReq] + N' I' = N'Programmer I'

-- SqlServer.2005

SELECT
	[t1].[Id],
	[t1].[Str1],
	[t1].[Str2],
	[t1].[StrReq],
	[t1].[Num]
FROM
	[ConcatTestEntity] [t1]

