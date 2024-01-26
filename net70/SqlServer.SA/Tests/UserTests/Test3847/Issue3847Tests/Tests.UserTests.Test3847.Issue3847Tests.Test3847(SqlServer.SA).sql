BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [Test3847_OutfeedTransportOrder]

BeforeExecute
-- SqlServer.SA SqlServer.2019

IF (OBJECT_ID(N'[Test3847_OutfeedTransportOrder]', N'U') IS NULL)
	CREATE TABLE [Test3847_OutfeedTransportOrder]
	(
		[Id] UniqueIdentifier NOT NULL
	)

BeforeExecute
-- SqlServer.SA SqlServer.2019
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
					('7bf798dd-fe5c-450f-9d3f-af5f6aad7709',DATETIME2FROMPARTS(2024, 1, 26, 10, 24, 32, 8701640, 7)),
					('427179e1-1bcb-4409-bfac-5f5090b4bf82',DATETIME2FROMPARTS(2024, 1, 26, 10, 24, 32, 8701663, 7)),
					('4478b520-8f41-47c3-b6ae-56fd183dfb14',DATETIME2FROMPARTS(2024, 1, 26, 10, 24, 32, 8701674, 7))
				) [x]([Key], [Value])
			WHERE
				[x].[Key] = [outfeed].[Id]
		) [t1]
		OUTER APPLY (
			SELECT TOP (@take_1)
				[x_1].[Value] as [NextCheck]
			FROM
				(VALUES
					('0816358f-3649-4c37-8889-7233c7fa7b0f',DATETIME2FROMPARTS(2024, 1, 26, 10, 24, 32, 8701685, 7)),
					('4629d8da-9e53-4134-bb60-6dc6b81150df',DATETIME2FROMPARTS(2024, 1, 26, 10, 24, 32, 8701696, 7))
				) [x_1]([Key], [Value])
			WHERE
				[x_1].[Key] = [outfeed].[Id]
		) [t2]

BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [Test3847_OutfeedTransportOrder]

