-- SqlServer.2022.MS SqlServer.2022

SELECT
	[e].[Id]
FROM
	[ConcatTestEntity] [e]
ORDER BY
	Coalesce([e].[StrReq], N'') + N'X'

-- SqlServer.2022.MS SqlServer.2022

SELECT
	[t1].[Id],
	[t1].[Str1],
	[t1].[Str2],
	[t1].[StrReq],
	[t1].[Num]
FROM
	[ConcatTestEntity] [t1]

