-- SqlServer.2008.MS SqlServer.2008

SELECT
	[e].[StrReq]
FROM
	[SqlConcatTestEntity] [e]
WHERE
	[e].[StrReq] + N' I' = N'Programmer I'

-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Id],
	[t1].[Str1],
	[t1].[Str2],
	[t1].[StrReq],
	[t1].[Num]
FROM
	[SqlConcatTestEntity] [t1]

