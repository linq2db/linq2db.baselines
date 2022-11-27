﻿BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [SampleClass]

BeforeExecute
-- SqlServer.2022

IF (OBJECT_ID(N'[SampleClass]', N'U') IS NULL)
	CREATE TABLE [SampleClass]
	(
		[Id]        Int NOT NULL,
		[NullValue] Int     NULL
	)

BeforeExecute
-- SqlServer.2022

SELECT
	[a].[Id],
	[a].[NullValue]
FROM
	[SampleClass] [a]
WHERE
	([a].[Id] = 0 AND Coalesce([a].[NullValue], 0) = 0 OR [a].[Id] = 1 AND Coalesce([a].[NullValue], 0) = 1 OR [a].[Id] = 2 AND Coalesce([a].[NullValue], 0) = 2)

BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [SampleClass]

