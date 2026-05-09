-- SqlServer.Contained SqlServer.2019

SELECT
	[e].[Str1] + [e].[Str2]
FROM
	[SqlConcatTestEntity] [e]
ORDER BY
	[e].[Id]

-- SqlServer.Contained SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[Str1],
	[t1].[Str2],
	[t1].[StrReq],
	[t1].[Num]
FROM
	[SqlConcatTestEntity] [t1]

