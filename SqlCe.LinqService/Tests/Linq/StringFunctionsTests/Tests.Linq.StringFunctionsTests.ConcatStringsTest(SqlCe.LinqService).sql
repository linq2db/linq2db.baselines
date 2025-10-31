BeforeExecute
-- SqlCe (asynchronously)

SELECT
	Coalesce([t].[Value2], '') as [ConcatStrings]
FROM
	[SampleClass] [t]
ORDER BY
	[t].[Id]

BeforeExecute
-- SqlCe (asynchronously)

SELECT
	Coalesce([t].[Value3], '') as [ConcatStrings]
FROM
	[SampleClass] [t]
ORDER BY
	[t].[Id]

BeforeExecute
-- SqlCe (asynchronously)

SELECT
	SUBSTRING(Coalesce(' -> ' + [t].[Value3], '') + Coalesce(' -> ' + [t].[Value1], '') + Coalesce(' -> ' + [t].[Value2], ''), 5, 2147483647) as [ConcatStrings]
FROM
	[SampleClass] [t]
ORDER BY
	[t].[Id]

BeforeExecute
-- SqlCe (asynchronously)

SELECT
	SUBSTRING(Coalesce(' -> ' + [t].[Value3], '') + Coalesce(' -> ' + [t].[Value3], ''), 5, 2147483647) as [ConcatStrings]
FROM
	[SampleClass] [t]
ORDER BY
	[t].[Id]

