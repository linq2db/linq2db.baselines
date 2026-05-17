-- SqlServer.2022

SELECT
	[a_1].[Id],
	[a_1].[NullValue]
FROM
	(
		SELECT
			[a].[Id],
			IIF([a].[NullValue] IS NOT NULL, [a].[NullValue], 0) as [KEYNUMB],
			[a].[NullValue]
		FROM
			[SampleClass] [a]
	) [a_1]
WHERE
	[a_1].[Id] = 0 AND [a_1].[KEYNUMB] = 0 OR [a_1].[Id] = 1 AND [a_1].[KEYNUMB] = 1 OR
	[a_1].[Id] = 2 AND [a_1].[KEYNUMB] = 2

