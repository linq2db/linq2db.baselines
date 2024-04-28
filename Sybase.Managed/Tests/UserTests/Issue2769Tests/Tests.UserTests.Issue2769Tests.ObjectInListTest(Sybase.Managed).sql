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
	[a].[Id],
	[a].[NullValue]
FROM
	[SampleClass] [a]
WHERE
	([a].[Id] = 0 AND ([a].[NullValue] = 0 AND [a].[NullValue] IS NOT NULL OR [a].[NullValue] IS NULL) OR [a].[Id] = 1 AND [a].[NullValue] = 1 AND [a].[NullValue] IS NOT NULL OR [a].[Id] = 2 AND [a].[NullValue] = 2 AND [a].[NullValue] IS NOT NULL)

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'SampleClass') IS NOT NULL)
	DROP TABLE [SampleClass]

