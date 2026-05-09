-- SqlServer.2012.MS SqlServer.2012

SELECT
	[e].[Id]
FROM
	[SqlConcatTestEntity] [e]
WHERE
	NOT ([e].[Str1] IS NULL OR [e].[Str2] IS NULL)

-- SqlServer.2012.MS SqlServer.2012

SELECT
	[t1].[Id],
	[t1].[Str1],
	[t1].[Str2],
	[t1].[StrReq],
	[t1].[Num]
FROM
	[SqlConcatTestEntity] [t1]

