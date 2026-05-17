-- SqlServer.2025.MS SqlServer.2025

SELECT
	[e].[Id]
FROM
	[ConcatTestEntity] [e]
WHERE
	CONCAT_WS(N'', Coalesce([e].[StrReq], N''), N' ', N'I') = N'Programmer I'

-- SqlServer.2025.MS SqlServer.2025

SELECT
	[t1].[Id],
	[t1].[Str1],
	[t1].[Str2],
	[t1].[StrReq],
	[t1].[Num]
FROM
	[ConcatTestEntity] [t1]

