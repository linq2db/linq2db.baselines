-- SqlServer.2008

SELECT
	[t].[Str],
	LEN([t].[Str] + N'.') - 1,
	N'original-' + Coalesce([t].[Str], N'')
FROM
	[TestLengthModel] [t]

-- SqlServer.2008

SELECT
	[t1].[Id],
	[t1].[Str]
FROM
	[TestLengthModel] [t1]

