-- SqlServer.2005.MS SqlServer.2005

SELECT
	[e].[StrReq]
FROM
	[ConcatTestEntity] [e]
WHERE
	(Coalesce([e].[StrReq], N'') + N' 1') = N'Programmer 1'

-- SqlServer.2005.MS SqlServer.2005

SELECT
	[t1].[Id],
	[t1].[Str1],
	[t1].[Str2],
	[t1].[StrReq],
	[t1].[Num]
FROM
	[ConcatTestEntity] [t1]

