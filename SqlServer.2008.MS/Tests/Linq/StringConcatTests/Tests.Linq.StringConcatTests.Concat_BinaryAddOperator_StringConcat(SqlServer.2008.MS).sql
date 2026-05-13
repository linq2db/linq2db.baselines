-- SqlServer.2008.MS SqlServer.2008

SELECT
	[e].[StrReq]
FROM
	[ConcatTestEntity] [e]
WHERE
	(Coalesce([e].[StrReq], N'') + N' I') = N'Programmer I'

-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Id],
	[t1].[Str1],
	[t1].[Str2],
	[t1].[StrReq],
	[t1].[Num]
FROM
	[ConcatTestEntity] [t1]

