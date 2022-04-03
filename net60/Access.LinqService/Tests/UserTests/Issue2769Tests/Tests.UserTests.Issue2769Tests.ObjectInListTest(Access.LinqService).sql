BeforeExecute
-- Access AccessOleDb

CREATE TABLE [SampleClass]
(
	[Id]        Int NOT NULL,
	[NullValue] Int     NULL
)

BeforeExecute
-- Access AccessOleDb

SELECT
	[a].[Id],
	[a].[NullValue]
FROM
	[SampleClass] [a]
WHERE
	([a].[Id] = 0 AND Iif([a].[NullValue] IS NULL, 0, [a].[NullValue]) = 0 OR [a].[Id] = 1 AND Iif([a].[NullValue] IS NULL, 0, [a].[NullValue]) = 1 OR [a].[Id] = 2 AND Iif([a].[NullValue] IS NULL, 0, [a].[NullValue]) = 2)

BeforeExecute
-- Access AccessOleDb

DROP TABLE [SampleClass]

