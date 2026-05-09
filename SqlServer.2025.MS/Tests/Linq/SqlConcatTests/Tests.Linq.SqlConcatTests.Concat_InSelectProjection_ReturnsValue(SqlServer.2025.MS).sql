-- SqlServer.2025.MS SqlServer.2025

SELECT
	[e].[Str1] + N'/' + [e].[StrReq]
FROM
	[SqlConcatTestEntity] [e]
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
	[SqlConcatTestEntity] [t1]

