BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [Test3847_OutfeedTransportOrder]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

IF (OBJECT_ID(N'[Test3847_OutfeedTransportOrder]', N'U') IS NULL)
	CREATE TABLE [Test3847_OutfeedTransportOrder]
	(
		[Id] UniqueIdentifier NOT NULL
	)

BeforeExecute
-- SqlServer.Contained SqlServer.2019
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
						('84648a57-6604-45f8-9d9c-f2f08be1127d',DATETIME2FROMPARTS(2024, 7, 14, 19, 34, 43, 7458667, 7)),
						('30e6ce21-790b-43a3-b51a-dfa364335322',DATETIME2FROMPARTS(2024, 7, 14, 19, 34, 43, 7458687, 7)),
						('4b2aecc9-0d73-4d25-bfc4-3e1fd96c73a8',DATETIME2FROMPARTS(2024, 7, 14, 19, 34, 43, 7458698, 7))
					) [t1]([Key], [Value])
				WHERE
					[t1].[Key] = [outfeed].[Id]
			) as [Value_1],
			(
				SELECT TOP (1)
					[t2].[Value]
				FROM
					(VALUES
						('047cc9e7-b8c2-4d1a-9ebd-030727849256',DATETIME2FROMPARTS(2024, 7, 14, 19, 34, 43, 7458709, 7)),
						('e8f780b1-fe40-4518-89c5-9295483a0707',DATETIME2FROMPARTS(2024, 7, 14, 19, 34, 43, 7458720, 7))
					) [t2]([Key], [Value])
				WHERE
					[t2].[Key] = [outfeed].[Id]
			) as [Value_1_1]
		FROM
			[Test3847_OutfeedTransportOrder] [outfeed]
	) [t3]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [Test3847_OutfeedTransportOrder]

