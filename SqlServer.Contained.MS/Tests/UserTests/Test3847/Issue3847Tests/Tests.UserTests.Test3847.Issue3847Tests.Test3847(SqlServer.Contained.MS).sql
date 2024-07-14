BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [Test3847_OutfeedTransportOrder]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

IF (OBJECT_ID(N'[Test3847_OutfeedTransportOrder]', N'U') IS NULL)
	CREATE TABLE [Test3847_OutfeedTransportOrder]
	(
		[Id] UniqueIdentifier NOT NULL
	)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
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
						('f728c443-2906-4946-88a8-883cfa9f06b8',DATETIME2FROMPARTS(2024, 7, 14, 19, 34, 43, 7629850, 7)),
						('e82395bf-4ab9-4f2b-b445-23fc887194f8',DATETIME2FROMPARTS(2024, 7, 14, 19, 34, 43, 7629867, 7)),
						('9cd9c50c-a182-40f0-b118-b483d5f2dc84',DATETIME2FROMPARTS(2024, 7, 14, 19, 34, 43, 7629878, 7))
					) [t1]([Key], [Value])
				WHERE
					[t1].[Key] = [outfeed].[Id]
			) as [Value_1],
			(
				SELECT TOP (1)
					[t2].[Value]
				FROM
					(VALUES
						('50c80657-0f34-469e-a16a-24343a9d9024',DATETIME2FROMPARTS(2024, 7, 14, 19, 34, 43, 7629889, 7)),
						('4f16f368-50e0-4d81-89af-bb89e02dea11',DATETIME2FROMPARTS(2024, 7, 14, 19, 34, 43, 7629899, 7))
					) [t2]([Key], [Value])
				WHERE
					[t2].[Key] = [outfeed].[Id]
			) as [Value_1_1]
		FROM
			[Test3847_OutfeedTransportOrder] [outfeed]
	) [t3]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [Test3847_OutfeedTransportOrder]

