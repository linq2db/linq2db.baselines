-- SqlServer.2022

SELECT
	[t].[Id],
	CONCAT_WS(N'', Coalesce([t].[Str1], N''), Coalesce([t].[Str2], N''), Coalesce([t].[StrReq], N''))
FROM
	[ConcatTestEntity] [t]
ORDER BY
	[t].[Id]

-- SqlServer.2022

SELECT
	[t1].[Id],
	[t1].[Str1],
	[t1].[Str2],
	[t1].[StrReq],
	[t1].[Num]
FROM
	[ConcatTestEntity] [t1]

