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
	[a_1].[RECORDNAME],
	[a_1].[KEYNUMB_1]
FROM
	(
		SELECT
			[a].[Id] as [RECORDNAME],
			IIF([a].[NullValue] IS NOT NULL, [a].[NullValue], 0) as [KEYNUMB],
			[a].[NullValue] as [KEYNUMB_1]
		FROM
			[SampleClass] [a]
	) [a_1]
WHERE
	([a_1].[RECORDNAME] = 0 AND [a_1].[KEYNUMB] = 0 OR [a_1].[RECORDNAME] = 1 AND [a_1].[KEYNUMB] = 1 OR [a_1].[RECORDNAME] = 2 AND [a_1].[KEYNUMB] = 2)

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [SampleClass]

