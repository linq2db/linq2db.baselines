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
						('cc55a0cd-84f6-4c6b-acab-e10bba8995e8',DATETIME2FROMPARTS(2024, 7, 14, 18, 41, 51, 6754285, 7)),
						('53da54fa-c1ad-4e41-a88f-bf10778930f2',DATETIME2FROMPARTS(2024, 7, 14, 18, 41, 51, 6754285, 7)),
						('a6bbcdce-1fe1-4241-8ed0-206a6dcff58f',DATETIME2FROMPARTS(2024, 7, 14, 18, 41, 51, 6754285, 7))
					) [t1]([Key], [Value])
				WHERE
					[t1].[Key] = [outfeed].[Id]
			) as [Value_1],
			(
				SELECT TOP (1)
					[t2].[Value]
				FROM
					(VALUES
						('4934c42a-2b40-4a2e-a369-e3507b15b2a0',DATETIME2FROMPARTS(2024, 7, 14, 18, 41, 51, 6754285, 7)),
						('6cabc3a4-92d9-4b52-b234-f9ce1cfb687a',DATETIME2FROMPARTS(2024, 7, 14, 18, 41, 51, 6754285, 7))
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

