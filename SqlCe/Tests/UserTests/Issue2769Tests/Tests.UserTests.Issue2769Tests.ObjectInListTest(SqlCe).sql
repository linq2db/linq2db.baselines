BeforeExecute
-- SqlCe

DROP TABLE [SampleClass]

BeforeExecute
-- SqlCe

CREATE TABLE [SampleClass]
(
	[Id]        Int NOT NULL,
	[NullValue] Int     NULL
)

BeforeExecute
-- SqlCe

SELECT
	[a].[Id] as [RECORDNAME],
	[a].[NullValue]
FROM
	[SampleClass] [a]
WHERE
	([a].[Id] = 0 AND ([a].[NullValue] = 0 AND [a].[NullValue] IS NOT NULL OR [a].[NullValue] IS NULL) OR [a].[Id] = 1 AND [a].[NullValue] = 1 AND [a].[NullValue] IS NOT NULL OR [a].[Id] = 2 AND [a].[NullValue] = 2 AND [a].[NullValue] IS NOT NULL)

BeforeExecute
-- SqlCe

DROP TABLE [SampleClass]

