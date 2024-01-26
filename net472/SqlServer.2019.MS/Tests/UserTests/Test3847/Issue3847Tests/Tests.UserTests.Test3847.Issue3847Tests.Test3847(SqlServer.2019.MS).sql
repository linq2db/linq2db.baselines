BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

DROP TABLE IF EXISTS [Test3847_OutfeedTransportOrder]

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

IF (OBJECT_ID(N'[Test3847_OutfeedTransportOrder]', N'U') IS NULL)
	CREATE TABLE [Test3847_OutfeedTransportOrder]
	(
		[Id] UniqueIdentifier NOT NULL
	)

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
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
					('2a33d9f6-3fc7-4dd8-91ea-b5ce851f8441',DATETIME2FROMPARTS(2024, 1, 26, 9, 22, 7, 6654288, 7)),
					('81b65a32-0570-4cda-8db3-6d0f79346cb5',DATETIME2FROMPARTS(2024, 1, 26, 9, 22, 7, 6654288, 7)),
					('95a0b611-d76a-446b-acd3-4aebb253a4d8',DATETIME2FROMPARTS(2024, 1, 26, 9, 22, 7, 6654288, 7))
				) [x]([Key], [Value])
			WHERE
				[x].[Key] = [outfeed].[Id]
		) [t1]
		OUTER APPLY (
			SELECT TOP (@take_1)
				[x_1].[Value] as [NextCheck]
			FROM
				(VALUES
					('334dd0b1-d761-469f-b311-82b392a6b919',DATETIME2FROMPARTS(2024, 1, 26, 9, 22, 7, 6654288, 7)),
					('eb6c3d2d-02b3-41cd-8c47-b3ac80433ab5',DATETIME2FROMPARTS(2024, 1, 26, 9, 22, 7, 6654288, 7))
				) [x_1]([Key], [Value])
			WHERE
				[x_1].[Key] = [outfeed].[Id]
		) [t2]

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

DROP TABLE IF EXISTS [Test3847_OutfeedTransportOrder]

