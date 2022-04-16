BeforeExecute
-- SqlServer.Contained SqlServer.2019

CREATE TABLE [SampleClass]
(
	[Id]        Int NOT NULL,
	[NullValue] Int     NULL
)

BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	[a].[Id],
	[a].[NullValue]
FROM
	[SampleClass] [a]
WHERE
	([a].[Id] = 0 AND Coalesce([a].[NullValue], 0) = 0 OR [a].[Id] = 1 AND Coalesce([a].[NullValue], 0) = 1 OR [a].[Id] = 2 AND Coalesce([a].[NullValue], 0) = 2)

BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [SampleClass]

