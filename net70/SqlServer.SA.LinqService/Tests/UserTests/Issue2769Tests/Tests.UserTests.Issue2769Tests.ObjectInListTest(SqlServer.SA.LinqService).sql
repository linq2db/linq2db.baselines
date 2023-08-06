BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [SampleClass]

BeforeExecute
-- SqlServer.SA SqlServer.2019

IF (OBJECT_ID(N'[SampleClass]', N'U') IS NULL)
	CREATE TABLE [SampleClass]
	(
		[Id]        Int NOT NULL,
		[NullValue] Int     NULL
	)

BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @default Int -- Int32
SET     @default = 0
DECLARE @default_1 Int -- Int32
SET     @default_1 = 0
DECLARE @default_2 Int -- Int32
SET     @default_2 = 0

SELECT
	[a].[Id],
	[a].[NullValue]
FROM
	[SampleClass] [a]
WHERE
	([a].[Id] = 0 AND Coalesce([a].[NullValue], @default) = 0 OR [a].[Id] = 1 AND Coalesce([a].[NullValue], @default_1) = 1 OR [a].[Id] = 2 AND Coalesce([a].[NullValue], @default_2) = 2)

BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [SampleClass]

