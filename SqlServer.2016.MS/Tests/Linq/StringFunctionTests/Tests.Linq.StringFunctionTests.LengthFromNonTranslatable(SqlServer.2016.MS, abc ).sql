-- SqlServer.2016.MS SqlServer.2016

SELECT
	[t].[Str],
	LEN([t].[Str] + N'.') - 1,
	N'original-' + [t].[Str]
FROM
	[TestLengthModel] [t]

-- SqlServer.2016.MS SqlServer.2016

SELECT
	[t1].[Id],
	[t1].[Str]
FROM
	[TestLengthModel] [t1]

