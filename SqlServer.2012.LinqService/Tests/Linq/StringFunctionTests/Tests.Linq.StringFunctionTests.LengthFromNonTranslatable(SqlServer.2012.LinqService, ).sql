BeforeExecute
-- SqlServer.2012 (asynchronously)

SELECT
	[t].[Str],
	LEN([t].[Str] + N'.') - 1,
	N'original-' + [t].[Str]
FROM
	[TestLengthModel] [t]

BeforeExecute
-- SqlServer.2012 (asynchronously)

SELECT
	[t1].[Id],
	[t1].[Str]
FROM
	[TestLengthModel] [t1]

