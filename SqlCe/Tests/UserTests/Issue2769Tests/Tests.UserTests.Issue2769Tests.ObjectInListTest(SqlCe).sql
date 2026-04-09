-- SqlCe

SELECT
	[a].[Id],
	[a].[NullValue]
FROM
	[SampleClass] [a]
WHERE
	[a].[Id] = 0 AND ([a].[NullValue] IS NULL OR [a].[NullValue] = 0) OR
	[a].[Id] = 1 AND [a].[NullValue] = 1 OR [a].[Id] = 2 AND [a].[NullValue] = 2

