BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT TOP (2)
	[t].[Str],
	LEN([t].[Str] + N'.') - 1
FROM
	[TestLengthModel] [t]

