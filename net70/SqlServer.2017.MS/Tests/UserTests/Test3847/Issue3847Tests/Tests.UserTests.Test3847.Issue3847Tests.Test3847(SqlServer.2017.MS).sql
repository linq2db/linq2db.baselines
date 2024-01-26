BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [Test3847_OutfeedTransportOrder]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

IF (OBJECT_ID(N'[Test3847_OutfeedTransportOrder]', N'U') IS NULL)
	CREATE TABLE [Test3847_OutfeedTransportOrder]
	(
		[Id] UniqueIdentifier NOT NULL
	)

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
DECLARE @take Int -- Int32
SET     @take = 1
DECLARE @take_1 Int -- Int32
SET     @take_1 = 1

SELECT
	[outfeed].[Id],
	[t1].[LastCheck],
	[t2].[NextCheck]
FROM
	[Test3847_OutfeedTransportOrder] [outfeed]
		OUTER APPLY (
			SELECT TOP (@take)
				[x].[Value] as [LastCheck]
			FROM
				(VALUES
					('6ef0b6c3-3d41-4a3b-bf0a-bb51ab1e7d5f',DATETIME2FROMPARTS(2024, 1, 26, 9, 14, 49, 2418040, 7)),
					('f052d8eb-c9cb-4fee-ba43-bc646ef8ef95',DATETIME2FROMPARTS(2024, 1, 26, 9, 14, 49, 2418055, 7)),
					('4c1bb938-2ce5-4975-acb8-1644e8ac8258',DATETIME2FROMPARTS(2024, 1, 26, 9, 14, 49, 2418058, 7))
				) [x]([Key], [Value])
			WHERE
				[x].[Key] = [outfeed].[Id]
		) [t1]
		OUTER APPLY (
			SELECT TOP (@take_1)
				[x_1].[Value] as [NextCheck]
			FROM
				(VALUES
					('133f09b8-b652-4482-9257-860665a19894',DATETIME2FROMPARTS(2024, 1, 26, 9, 14, 49, 2418072, 7)),
					('781de097-11b8-4117-99bb-5c1a062b5f09',DATETIME2FROMPARTS(2024, 1, 26, 9, 14, 49, 2418075, 7))
				) [x_1]([Key], [Value])
			WHERE
				[x_1].[Key] = [outfeed].[Id]
		) [t2]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [Test3847_OutfeedTransportOrder]

