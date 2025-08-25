BeforeExecute
-- SqlServer.2019 (asynchronously)

SELECT TOP (2)
	[t].[Str],
	LEN([t].[Str] + N'.') - 1
FROM
	[TestLengthModel] [t]

