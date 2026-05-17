-- SqlServer.2022.MS SqlServer.2022

SELECT
	[e].[Id]
FROM
	[ConcatTestEntity] [e]
WHERE
	([e].[StrReq] + [e].[StrReq]) IS NOT NULL

-- SqlServer.2022.MS SqlServer.2022

SELECT
	[t1].[Id],
	[t1].[Str1],
	[t1].[Str2],
	[t1].[StrReq],
	[t1].[Num]
FROM
	[ConcatTestEntity] [t1]

