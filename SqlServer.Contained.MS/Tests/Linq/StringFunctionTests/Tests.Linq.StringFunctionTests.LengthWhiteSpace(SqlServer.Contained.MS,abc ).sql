BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT TOP (2)
	[t].[Str],
	LEN([t].[Str] + N'.') - 1
FROM
	[TestLengthModel] [t]

