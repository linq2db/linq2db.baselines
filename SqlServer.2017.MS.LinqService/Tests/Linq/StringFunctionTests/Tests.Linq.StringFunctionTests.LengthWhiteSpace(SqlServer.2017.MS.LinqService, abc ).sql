BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT TOP (2)
	[t].[Str],
	LEN([t].[Str] + N'.') - 1
FROM
	[TestLengthModel] [t]

