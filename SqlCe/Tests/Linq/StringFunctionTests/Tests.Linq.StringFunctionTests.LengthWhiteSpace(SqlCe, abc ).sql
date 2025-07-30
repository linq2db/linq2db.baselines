BeforeExecute
-- SqlCe

SELECT TOP (2)
	[t].[Str],
	LEN([t].[Str] + '.') - 1 as [Length_1]
FROM
	[TestLengthModel] [t]

