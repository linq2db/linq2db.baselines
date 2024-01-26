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
					('b7819f33-8898-4e1b-84b5-0acb84f622b4',DATETIME2FROMPARTS(2024, 1, 26, 10, 24, 33, 180961, 7)),
					('5442db58-a764-469a-9b96-369f885bccb8',DATETIME2FROMPARTS(2024, 1, 26, 10, 24, 33, 180985, 7)),
					('d8670699-0e45-4f8b-94a1-00a4e5250b5c',DATETIME2FROMPARTS(2024, 1, 26, 10, 24, 33, 180995, 7))
				) [x]([Key], [Value])
			WHERE
				[x].[Key] = [outfeed].[Id]
		) [t1]
		OUTER APPLY (
			SELECT TOP (@take_1)
				[x_1].[Value] as [NextCheck]
			FROM
				(VALUES
					('6833e1da-8880-4d89-a94d-1a840f300a40',DATETIME2FROMPARTS(2024, 1, 26, 10, 24, 33, 181032, 7)),
					('3443b85c-2a78-48ef-a905-8b022acb01e0',DATETIME2FROMPARTS(2024, 1, 26, 10, 24, 33, 181048, 7))
				) [x_1]([Key], [Value])
			WHERE
				[x_1].[Key] = [outfeed].[Id]
		) [t2]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [Test3847_OutfeedTransportOrder]

