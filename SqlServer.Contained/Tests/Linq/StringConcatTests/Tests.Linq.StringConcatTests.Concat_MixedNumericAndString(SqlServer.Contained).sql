-- SqlServer.Contained SqlServer.2019

SELECT
	[e].[Id]
FROM
	[ConcatTestEntity] [e]
WHERE
	(CAST([e].[Num] AS NVarChar(11)) + N'-' + Coalesce([e].[StrReq], N'')) = N'100-Programmer'

-- SqlServer.Contained SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[Str1],
	[t1].[Str2],
	[t1].[StrReq],
	[t1].[Num]
FROM
	[ConcatTestEntity] [t1]

