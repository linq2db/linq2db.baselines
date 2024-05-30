﻿BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[SampleClass]', N'U') IS NOT NULL)
	DROP TABLE [SampleClass]

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[SampleClass]', N'U') IS NULL)
	CREATE TABLE [SampleClass]
	(
		[Id]        Int NOT NULL,
		[NullValue] Int     NULL
	)

BeforeExecute
-- SqlServer.2008

SELECT
	[a_1].[RECORDNAME],
	[a_1].[NullValue]
FROM
	(
		SELECT
			[a].[Id] as [RECORDNAME],
			CASE
				WHEN [a].[NullValue] IS NOT NULL THEN [a].[NullValue]
				ELSE 0
			END as [KEYNUMB],
			[a].[NullValue]
		FROM
			[SampleClass] [a]
	) [a_1]
WHERE
	([a_1].[RECORDNAME] = 0 AND [a_1].[KEYNUMB] = 0 OR [a_1].[RECORDNAME] = 1 AND [a_1].[KEYNUMB] = 1 OR [a_1].[RECORDNAME] = 2 AND [a_1].[KEYNUMB] = 2)

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[SampleClass]', N'U') IS NOT NULL)
	DROP TABLE [SampleClass]

