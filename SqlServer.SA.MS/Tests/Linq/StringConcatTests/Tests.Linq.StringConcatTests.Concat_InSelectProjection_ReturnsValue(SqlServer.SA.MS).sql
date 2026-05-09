-- SqlServer.SA.MS SqlServer.2019

SELECT
	Coalesce([e].[Str1], N'') + N'/' + Coalesce([e].[StrReq], N'')
FROM
	[ConcatTestEntity] [e]
ORDER BY
	[e].[Id]

-- SqlServer.SA.MS SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[Str1],
	[t1].[Str2],
	[t1].[StrReq],
	[t1].[Num]
FROM
	[ConcatTestEntity] [t1]

