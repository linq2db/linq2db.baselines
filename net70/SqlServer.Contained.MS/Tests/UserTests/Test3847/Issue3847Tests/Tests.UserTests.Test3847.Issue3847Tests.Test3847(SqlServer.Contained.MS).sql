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
					('5f38b69e-d3b1-4907-b01d-4979b9be4ddc',DATETIME2FROMPARTS(2024, 1, 26, 9, 35, 56, 9376144, 7)),
					('453e081e-d124-4e28-8146-7e6ab700de65',DATETIME2FROMPARTS(2024, 1, 26, 9, 35, 56, 9376158, 7)),
					('69da36c1-ac28-491a-9222-a18c8e59b813',DATETIME2FROMPARTS(2024, 1, 26, 9, 35, 56, 9376161, 7))
				) [x]([Key], [Value])
			WHERE
				[x].[Key] = [outfeed].[Id]
		) [t1]
		OUTER APPLY (
			SELECT TOP (@take_1)
				[x_1].[Value] as [NextCheck]
			FROM
				(VALUES
					('fd46040b-e380-463d-8e76-0ac32c342b78',DATETIME2FROMPARTS(2024, 1, 26, 9, 35, 56, 9376163, 7)),
					('b66e7d1c-ffdf-4b46-a618-f4f4d2818494',DATETIME2FROMPARTS(2024, 1, 26, 9, 35, 56, 9376166, 7))
				) [x_1]([Key], [Value])
			WHERE
				[x_1].[Key] = [outfeed].[Id]
		) [t2]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [Test3847_OutfeedTransportOrder]

