BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [Test3847_OutfeedTransportOrder]

BeforeExecute
-- SqlServer.2022

IF (OBJECT_ID(N'[Test3847_OutfeedTransportOrder]', N'U') IS NULL)
	CREATE TABLE [Test3847_OutfeedTransportOrder]
	(
		[Id] UniqueIdentifier NOT NULL
	)

BeforeExecute
-- SqlServer.2022
DECLARE @p DateTime2
SET     @p = NULL
DECLARE @p_1 DateTime2
SET     @p_1 = NULL

SELECT
	[t3].[Id],
	IIF([t3].[Value_1] IS NOT NULL, [t3].[Value_1], @p),
	IIF([t3].[Value_1_1] IS NOT NULL, [t3].[Value_1_1], @p_1)
FROM
	(
		SELECT
			[outfeed].[Id],
			(
				SELECT TOP (1)
					[t1].[Value]
				FROM
					(VALUES
						('57d6b37d-1222-4e84-9778-c8580a287671',DATETIME2FROMPARTS(2024, 7, 14, 19, 38, 41, 9784291, 7)),
						('3a58c32c-ce2c-4ea2-8a3e-c65d5d12fe96',DATETIME2FROMPARTS(2024, 7, 14, 19, 38, 41, 9793906, 7)),
						('0e3eabf5-e5f7-4249-a0c6-6e5c6eea0e7e',DATETIME2FROMPARTS(2024, 7, 14, 19, 38, 41, 9793920, 7))
					) [t1]([Key], [Value])
				WHERE
					[t1].[Key] = [outfeed].[Id]
			) as [Value_1],
			(
				SELECT TOP (1)
					[t2].[Value]
				FROM
					(VALUES
						('78c4e1fb-8f1a-4353-b681-6efc6e14f5d5',DATETIME2FROMPARTS(2024, 7, 14, 19, 38, 41, 9793931, 7)),
						('8a3b292b-46de-4bbc-9624-550505c062c7',DATETIME2FROMPARTS(2024, 7, 14, 19, 38, 41, 9793943, 7))
					) [t2]([Key], [Value])
				WHERE
					[t2].[Key] = [outfeed].[Id]
			) as [Value_1_1]
		FROM
			[Test3847_OutfeedTransportOrder] [outfeed]
	) [t3]

BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [Test3847_OutfeedTransportOrder]

