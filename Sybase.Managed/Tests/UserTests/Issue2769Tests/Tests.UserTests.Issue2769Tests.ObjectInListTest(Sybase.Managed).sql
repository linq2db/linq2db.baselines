BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'SampleClass') IS NOT NULL)
	DROP TABLE [SampleClass]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'SampleClass') IS NULL)
	EXECUTE('
		CREATE TABLE [SampleClass]
		(
			[Id]        Int NOT NULL,
			[NullValue] Int     NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[a_1].[Id],
	[a_1].[NullValue]
FROM
	(
		SELECT
			[a].[Id],
			CASE
				WHEN [a].[NullValue] IS NOT NULL THEN [a].[NullValue]
				ELSE 0
			END as [KEYNUMB],
			[a].[NullValue]
		FROM
			[SampleClass] [a]
	) [a_1]
WHERE
	[a_1].[Id] = 0 AND [a_1].[KEYNUMB] = 0 OR [a_1].[Id] = 1 AND [a_1].[KEYNUMB] = 1 OR
	[a_1].[Id] = 2 AND [a_1].[KEYNUMB] = 2

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'SampleClass') IS NOT NULL)
	DROP TABLE [SampleClass]

