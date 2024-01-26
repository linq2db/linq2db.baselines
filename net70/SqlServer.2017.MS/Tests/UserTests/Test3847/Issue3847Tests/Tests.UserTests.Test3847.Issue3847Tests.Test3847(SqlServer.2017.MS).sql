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
					('72fabb0b-db43-40e0-9a33-cdae61e5ea63',DATETIME2FROMPARTS(2024, 1, 26, 10, 8, 39, 4282697, 7)),
					('19084101-d11d-4c55-a6b4-6d5d6cc64c41',DATETIME2FROMPARTS(2024, 1, 26, 10, 8, 39, 4282717, 7)),
					('4669bf4f-8f83-4b44-8313-2d5fd317afae',DATETIME2FROMPARTS(2024, 1, 26, 10, 8, 39, 4282729, 7))
				) [x]([Key], [Value])
			WHERE
				[x].[Key] = [outfeed].[Id]
		) [t1]
		OUTER APPLY (
			SELECT TOP (@take_1)
				[x_1].[Value] as [NextCheck]
			FROM
				(VALUES
					('e0fe8f70-9bdc-4f4f-addd-5c7f778f206d',DATETIME2FROMPARTS(2024, 1, 26, 10, 8, 39, 4282740, 7)),
					('b2c345eb-1592-4ecb-a503-511820da84d1',DATETIME2FROMPARTS(2024, 1, 26, 10, 8, 39, 4282751, 7))
				) [x_1]([Key], [Value])
			WHERE
				[x_1].[Key] = [outfeed].[Id]
		) [t2]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [Test3847_OutfeedTransportOrder]

