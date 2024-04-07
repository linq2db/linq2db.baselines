BeforeExecute
-- Access AccessOleDb

DROP TABLE [SampleClass]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [SampleClass]
(
	[Id]        Int NOT NULL,
	[NullValue] Int     NULL
)

BeforeExecute
-- Access AccessOleDb
DECLARE @default Integer -- Int32
SET     @default = 0
DECLARE @default_1 Integer -- Int32
SET     @default_1 = 0
DECLARE @default_2 Integer -- Int32
SET     @default_2 = 0

SELECT
	[a].[Id],
	[a].[NullValue]
FROM
	[SampleClass] [a]
WHERE
	([a].[Id] = 0 AND Iif([a].[NullValue] IS NULL, @default, [a].[NullValue]) = 0 OR [a].[Id] = 1 AND Iif([a].[NullValue] IS NULL, @default_1, [a].[NullValue]) = 1 OR [a].[Id] = 2 AND Iif([a].[NullValue] IS NULL, @default_2, [a].[NullValue]) = 2)

BeforeExecute
-- Access AccessOleDb

DROP TABLE [SampleClass]

