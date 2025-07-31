BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[t].[Str],
	LEN([t].[Str] + N'.') - 1,
	N'original-' + [t].[Str]
FROM
	[TestLengthModel] [t]

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[Str]
FROM
	[TestLengthModel] [t1]

