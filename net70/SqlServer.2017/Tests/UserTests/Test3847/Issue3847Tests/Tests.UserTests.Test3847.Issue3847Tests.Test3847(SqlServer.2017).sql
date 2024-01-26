BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [Test3847_OutfeedTransportOrder]

BeforeExecute
-- SqlServer.2017

IF (OBJECT_ID(N'[Test3847_OutfeedTransportOrder]', N'U') IS NULL)
	CREATE TABLE [Test3847_OutfeedTransportOrder]
	(
		[Id] UniqueIdentifier NOT NULL
	)

BeforeExecute
-- SqlServer.2017
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
					('788c4e9d-96aa-4e4e-9ecf-e4e8999757f7',DATETIME2FROMPARTS(2024, 1, 26, 9, 14, 49, 2013516, 7)),
					('622dae1d-e82c-49d9-a70e-1b846ff1fbd9',DATETIME2FROMPARTS(2024, 1, 26, 9, 14, 49, 2028760, 7)),
					('4728dd75-85f9-4e5d-a406-e56fc50cd21f',DATETIME2FROMPARTS(2024, 1, 26, 9, 14, 49, 2028764, 7))
				) [x]([Key], [Value])
			WHERE
				[x].[Key] = [outfeed].[Id]
		) [t1]
		OUTER APPLY (
			SELECT TOP (@take_1)
				[x_1].[Value] as [NextCheck]
			FROM
				(VALUES
					('5bbf3cc9-3579-4775-9a42-6a1619dc42a9',DATETIME2FROMPARTS(2024, 1, 26, 9, 14, 49, 2028766, 7)),
					('94232108-0de4-4d98-a4a6-703ac2a3ffa9',DATETIME2FROMPARTS(2024, 1, 26, 9, 14, 49, 2028771, 7))
				) [x_1]([Key], [Value])
			WHERE
				[x_1].[Key] = [outfeed].[Id]
		) [t2]

BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [Test3847_OutfeedTransportOrder]

