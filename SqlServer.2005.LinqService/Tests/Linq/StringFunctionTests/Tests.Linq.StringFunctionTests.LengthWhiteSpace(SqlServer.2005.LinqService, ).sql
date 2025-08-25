BeforeExecute
-- SqlServer.2005 (asynchronously)

SELECT TOP (2)
	[t].[Str],
	LEN([t].[Str] + N'.') - 1
FROM
	[TestLengthModel] [t]

