-- SqlCe

SELECT
	[t].[Str],
	LEN([t].[Str] + '.') - 1 as [Length_1],
	'original-' + Coalesce([t].[Str], '') as [Condition_1]
FROM
	[TestLengthModel] [t]

-- SqlCe

SELECT
	[t1].[Id],
	[t1].[Str]
FROM
	[TestLengthModel] [t1]

