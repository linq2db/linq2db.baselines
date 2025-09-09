BeforeExecute
-- SqlCe (asynchronously)

SELECT
	[t].[Str],
	LEN([t].[Str] + '.') - 1 as [Length_1],
	'original-' + [t].[Str] as [c1]
FROM
	[TestLengthModel] [t]

BeforeExecute
-- SqlCe (asynchronously)

SELECT
	[t1].[Id],
	[t1].[Str]
FROM
	[TestLengthModel] [t1]

