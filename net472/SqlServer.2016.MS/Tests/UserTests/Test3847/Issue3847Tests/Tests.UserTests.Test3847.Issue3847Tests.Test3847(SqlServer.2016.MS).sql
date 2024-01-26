BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

DROP TABLE IF EXISTS [Test3847_OutfeedTransportOrder]

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

IF (OBJECT_ID(N'[Test3847_OutfeedTransportOrder]', N'U') IS NULL)
	CREATE TABLE [Test3847_OutfeedTransportOrder]
	(
		[Id] UniqueIdentifier NOT NULL
	)

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016
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
					('412ded8c-7ae8-41d9-8c4d-375875c9600e',DATETIME2FROMPARTS(2024, 1, 26, 9, 20, 48, 2719664, 7)),
					('a5c574be-d3e8-47a6-8bda-fa50c0901dce',DATETIME2FROMPARTS(2024, 1, 26, 9, 20, 48, 2875915, 7)),
					('94bebd9f-2a67-495c-aec8-afc5070f62ba',DATETIME2FROMPARTS(2024, 1, 26, 9, 20, 48, 2875915, 7))
				) [x]([Key], [Value])
			WHERE
				[x].[Key] = [outfeed].[Id]
		) [t1]
		OUTER APPLY (
			SELECT TOP (@take_1)
				[x_1].[Value] as [NextCheck]
			FROM
				(VALUES
					('c2d5e878-9734-470d-bacf-ea9e38f3ebe2',DATETIME2FROMPARTS(2024, 1, 26, 9, 20, 48, 2875915, 7)),
					('5edd313c-463f-4343-ad13-aba8d77704f5',DATETIME2FROMPARTS(2024, 1, 26, 9, 20, 48, 2875915, 7))
				) [x_1]([Key], [Value])
			WHERE
				[x_1].[Key] = [outfeed].[Id]
		) [t2]

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

DROP TABLE IF EXISTS [Test3847_OutfeedTransportOrder]

