-- SqlServer.2025.MS SqlServer.2025

SELECT
	Coalesce([e].[Str1], N'') + N'/' + Coalesce([e].[StrReq], N'')
FROM
	[ConcatTestEntity] [e]
ORDER BY
	[e].[Id]

-- SqlServer.2025.MS SqlServer.2025

SELECT
	[t1].[Id],
	[t1].[Str1],
	[t1].[Str2],
	[t1].[StrReq],
	[t1].[Num]
FROM
	[ConcatTestEntity] [t1]

