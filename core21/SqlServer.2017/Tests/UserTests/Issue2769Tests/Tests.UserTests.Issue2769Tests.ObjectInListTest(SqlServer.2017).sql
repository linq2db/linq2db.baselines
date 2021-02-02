BeforeExecute
-- SqlServer.2017

CREATE TABLE [SampleClass]
(
	[Id]        Int NOT NULL,
	[NullValue] Int     NULL
)

BeforeExecute
-- SqlServer.2017

SELECT
	[a].[Id],
	[a].[NullValue]
FROM
	[SampleClass] [a]
WHERE
	([a].[Id] = 0 AND IIF([a].[NullValue] IS NULL, 0, [a].[NullValue]) = 0 OR [a].[Id] = 1 AND IIF([a].[NullValue] IS NULL, 0, [a].[NullValue]) = 1 OR [a].[Id] = 2 AND IIF([a].[NullValue] IS NULL, 0, [a].[NullValue]) = 2)

BeforeExecute
-- SqlServer.2017

DROP TABLE [SampleClass]

