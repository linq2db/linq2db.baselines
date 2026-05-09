-- SqlServer.2005.MS SqlServer.2005

SELECT
	[e].[Id]
FROM
	[SqlConcatTestEntity] [e]
WHERE
	CAST([e].[Num] AS NVarChar(11)) + N'-' + [e].[StrReq] = N'100-Programmer'

-- SqlServer.2005.MS SqlServer.2005

SELECT
	[t1].[Id],
	[t1].[Str1],
	[t1].[Str2],
	[t1].[StrReq],
	[t1].[Num]
FROM
	[SqlConcatTestEntity] [t1]

