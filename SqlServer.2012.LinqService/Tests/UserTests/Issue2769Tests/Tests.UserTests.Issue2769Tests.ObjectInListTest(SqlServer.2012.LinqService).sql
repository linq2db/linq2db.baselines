BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[SampleClass]', N'U') IS NOT NULL)
	DROP TABLE [SampleClass]

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[SampleClass]', N'U') IS NULL)
	CREATE TABLE [SampleClass]
	(
		[Id]        Int NOT NULL,
		[NullValue] Int     NULL
	)

BeforeExecute
-- SqlServer.2012

SELECT
	[a].[Id],
	[a].[NullValue]
FROM
	[SampleClass] [a]
WHERE
	([a].[Id] = 0 AND ([a].[NullValue] = 0 AND [a].[NullValue] IS NOT NULL OR [a].[NullValue] IS NULL) OR [a].[Id] = 1 AND [a].[NullValue] = 1 AND [a].[NullValue] IS NOT NULL OR [a].[Id] = 2 AND [a].[NullValue] = 2 AND [a].[NullValue] IS NOT NULL)

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[SampleClass]', N'U') IS NOT NULL)
	DROP TABLE [SampleClass]

