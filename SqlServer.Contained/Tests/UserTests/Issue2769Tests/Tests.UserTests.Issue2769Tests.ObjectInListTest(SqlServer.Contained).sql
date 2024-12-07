BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [SampleClass]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

IF (OBJECT_ID(N'[SampleClass]', N'U') IS NULL)
	CREATE TABLE [SampleClass]
	(
		[Id]        Int NOT NULL,
		[NullValue] Int     NULL
	)

BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	[a_1].[Id],
	[a_1].[NullValue]
FROM
	(
		SELECT
			[a].[Id],
			IIF([a].[NullValue] IS NOT NULL, [a].[NullValue], 0) as [c1],
			[a].[NullValue]
		FROM
			[SampleClass] [a]
	) [a_1]
WHERE
	[a_1].[Id] = 0 AND [a_1].[c1] = 0 OR [a_1].[Id] = 1 AND [a_1].[c1] = 1 OR
	[a_1].[Id] = 2 AND [a_1].[c1] = 2

BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [SampleClass]

