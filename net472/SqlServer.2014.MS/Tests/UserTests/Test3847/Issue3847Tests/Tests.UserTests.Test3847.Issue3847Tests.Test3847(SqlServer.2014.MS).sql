BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[Test3847_OutfeedTransportOrder]', N'U') IS NOT NULL)
	DROP TABLE [Test3847_OutfeedTransportOrder]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[Test3847_OutfeedTransportOrder]', N'U') IS NULL)
	CREATE TABLE [Test3847_OutfeedTransportOrder]
	(
		[Id] UniqueIdentifier NOT NULL
	)

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
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
					('763c49db-dd7b-4016-841c-105778a41022',DATETIME2FROMPARTS(2024, 1, 26, 9, 0, 6, 8333688, 7)),
					('43487ab9-bdb1-472c-b71e-c1ef6318dff1',DATETIME2FROMPARTS(2024, 1, 26, 9, 0, 6, 8333688, 7)),
					('2387bb57-7140-4564-900a-1cd18a36f232',DATETIME2FROMPARTS(2024, 1, 26, 9, 0, 6, 8333688, 7))
				) [x]([Key], [Value])
			WHERE
				[x].[Key] = [outfeed].[Id]
		) [t1]
		OUTER APPLY (
			SELECT TOP (@take_1)
				[x_1].[Value] as [NextCheck]
			FROM
				(VALUES
					('5aeefb81-8191-4a72-b5b8-e25d1a36baeb',DATETIME2FROMPARTS(2024, 1, 26, 9, 0, 6, 8333688, 7)),
					('8c3019f8-72b5-4b13-b696-4d510b9e53f0',DATETIME2FROMPARTS(2024, 1, 26, 9, 0, 6, 8333688, 7))
				) [x_1]([Key], [Value])
			WHERE
				[x_1].[Key] = [outfeed].[Id]
		) [t2]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[Test3847_OutfeedTransportOrder]', N'U') IS NOT NULL)
	DROP TABLE [Test3847_OutfeedTransportOrder]

