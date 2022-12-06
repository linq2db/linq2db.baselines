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
DECLARE @_default Integer -- Int32
SET     @_default = 0
DECLARE @_default_1 Integer -- Int32
SET     @_default_1 = 0
DECLARE @_default_2 Integer -- Int32
SET     @_default_2 = 0

SELECT
	[a].[Id],
	[a].[NullValue]
FROM
	[SampleClass] [a]
WHERE
	([a].[Id] = 0 AND Iif([a].[NullValue] IS NULL, @_default, [a].[NullValue]) = 0 OR [a].[Id] = 1 AND Iif([a].[NullValue] IS NULL, @_default_1, [a].[NullValue]) = 1 OR [a].[Id] = 2 AND Iif([a].[NullValue] IS NULL, @_default_2, [a].[NullValue]) = 2)

BeforeExecute
-- Access AccessOleDb

DROP TABLE [SampleClass]

