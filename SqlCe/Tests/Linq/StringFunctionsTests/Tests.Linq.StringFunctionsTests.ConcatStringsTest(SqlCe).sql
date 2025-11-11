-- SqlCe

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value3],
	[t1].[Value4]
FROM
	[SampleClass] [t1]
ORDER BY
	[t1].[Id]

-- SqlCe

SELECT
	Coalesce([t].[Value2], '') as [ConcatStrings]
FROM
	[SampleClass] [t]
ORDER BY
	[t].[Id]

-- SqlCe

SELECT
	Coalesce([t].[Value3], '') as [ConcatStrings]
FROM
	[SampleClass] [t]
ORDER BY
	[t].[Id]

-- SqlCe

SELECT
	SUBSTRING(Coalesce(' -> ' + [t].[Value3], '') + Coalesce(' -> ' + [t].[Value1], '') + Coalesce(' -> ' + [t].[Value2], ''), 5, 2147483647) as [ConcatStrings]
FROM
	[SampleClass] [t]
ORDER BY
	[t].[Id]

-- SqlCe

SELECT
	SUBSTRING(Coalesce(' -> ' + [t].[Value3], '') + Coalesce(' -> ' + [t].[Value3], ''), 5, 2147483647) as [ConcatStrings]
FROM
	[SampleClass] [t]
ORDER BY
	[t].[Id]

