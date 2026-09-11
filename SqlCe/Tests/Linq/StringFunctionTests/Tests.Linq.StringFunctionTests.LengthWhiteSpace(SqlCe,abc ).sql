-- SqlCe
SELECT TOP (2)
	[t].[Str],
	LEN([t].[Str] + '.') - 1
FROM
	[TestLengthModel] [t]

