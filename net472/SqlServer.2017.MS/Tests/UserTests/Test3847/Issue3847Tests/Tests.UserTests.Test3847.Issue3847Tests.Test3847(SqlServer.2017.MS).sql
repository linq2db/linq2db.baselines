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
					('5fc6d29e-a368-42bf-8078-cef73f0e980c',DATETIME2FROMPARTS(2024, 1, 26, 9, 7, 13, 9267612, 7)),
					('4c57b9f9-0a85-49e9-b532-ff048a6db5ef',DATETIME2FROMPARTS(2024, 1, 26, 9, 7, 13, 9267612, 7)),
					('9d12254e-c477-4628-9925-dbcfe42f3229',DATETIME2FROMPARTS(2024, 1, 26, 9, 7, 13, 9267612, 7))
				) [x]([Key], [Value])
			WHERE
				[x].[Key] = [outfeed].[Id]
		) [t1]
		OUTER APPLY (
			SELECT TOP (@take_1)
				[x_1].[Value] as [NextCheck]
			FROM
				(VALUES
					('4ef46fea-686e-4970-875e-15141ecb1ee9',DATETIME2FROMPARTS(2024, 1, 26, 9, 7, 13, 9267612, 7)),
					('2c096b88-f6b4-422a-8075-3eef662ce838',DATETIME2FROMPARTS(2024, 1, 26, 9, 7, 13, 9267612, 7))
				) [x_1]([Key], [Value])
			WHERE
				[x_1].[Key] = [outfeed].[Id]
		) [t2]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [Test3847_OutfeedTransportOrder]

