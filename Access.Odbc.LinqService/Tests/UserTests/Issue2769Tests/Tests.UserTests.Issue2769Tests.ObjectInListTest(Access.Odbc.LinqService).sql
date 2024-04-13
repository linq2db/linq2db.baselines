BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [SampleClass]

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [SampleClass]
(
	[Id]        Int NOT NULL,
	[NullValue] Int     NULL
)

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[a].[Id],
	[a].[NullValue]
FROM
	[SampleClass] [a]
WHERE
	([a].[Id] = 0 AND ([a].[NullValue] = 0 AND [a].[NullValue] IS NOT NULL OR [a].[NullValue] IS NULL) OR [a].[Id] = 1 AND [a].[NullValue] = 1 AND [a].[NullValue] IS NOT NULL OR [a].[Id] = 2 AND [a].[NullValue] = 2 AND [a].[NullValue] IS NOT NULL)

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [SampleClass]

