-- SqlCe

SELECT
	[t].[Str],
	LEN([t].[Str] + '.') - 1,
	'original-' + Coalesce([t].[Str], '')
FROM
	[TestLengthModel] [t]

-- SqlCe

SELECT
	[t1].[Id],
	[t1].[Str]
FROM
	[TestLengthModel] [t1]

