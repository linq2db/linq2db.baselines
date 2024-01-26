BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [Test3847_OutfeedTransportOrder]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

IF (OBJECT_ID(N'[Test3847_OutfeedTransportOrder]', N'U') IS NULL)
	CREATE TABLE [Test3847_OutfeedTransportOrder]
	(
		[Id] UniqueIdentifier NOT NULL
	)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
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
					('44a9a2c5-e5c9-4962-8d1c-0bd1d00ea082',DATETIME2FROMPARTS(2024, 1, 26, 9, 35, 56, 8986678, 7)),
					('1b92de25-7226-47b9-b6c9-77e002da2cc8',DATETIME2FROMPARTS(2024, 1, 26, 9, 35, 56, 8986698, 7)),
					('a366276a-a142-4106-8a84-2bc06d316d8d',DATETIME2FROMPARTS(2024, 1, 26, 9, 35, 56, 8986701, 7))
				) [x]([Key], [Value])
			WHERE
				[x].[Key] = [outfeed].[Id]
		) [t1]
		OUTER APPLY (
			SELECT TOP (@take_1)
				[x_1].[Value] as [NextCheck]
			FROM
				(VALUES
					('f72fa8e5-7dfe-414e-a7c8-1266e542f4ad',DATETIME2FROMPARTS(2024, 1, 26, 9, 35, 56, 8986703, 7)),
					('a28fb03f-c9de-4aa8-86e1-149d765f356d',DATETIME2FROMPARTS(2024, 1, 26, 9, 35, 56, 8986706, 7))
				) [x_1]([Key], [Value])
			WHERE
				[x_1].[Key] = [outfeed].[Id]
		) [t2]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [Test3847_OutfeedTransportOrder]

