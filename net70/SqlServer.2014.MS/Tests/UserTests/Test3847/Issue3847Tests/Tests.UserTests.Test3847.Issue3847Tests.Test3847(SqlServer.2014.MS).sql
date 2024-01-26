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
					('d3592bcb-9207-404e-b815-63476be58f4c',DATETIME2FROMPARTS(2024, 1, 26, 9, 7, 16, 553189, 7)),
					('91580549-f329-4b3c-bc6f-33d7db6908b0',DATETIME2FROMPARTS(2024, 1, 26, 9, 7, 16, 553228, 7)),
					('f298c2b8-381f-42ce-a69b-7f22c7d1f267',DATETIME2FROMPARTS(2024, 1, 26, 9, 7, 16, 553230, 7))
				) [x]([Key], [Value])
			WHERE
				[x].[Key] = [outfeed].[Id]
		) [t1]
		OUTER APPLY (
			SELECT TOP (@take_1)
				[x_1].[Value] as [NextCheck]
			FROM
				(VALUES
					('fcf6fe87-d940-423a-b88f-4aa0f0c8c339',DATETIME2FROMPARTS(2024, 1, 26, 9, 7, 16, 553233, 7)),
					('f9e5fc85-07e6-45a0-9c29-a98998de71ec',DATETIME2FROMPARTS(2024, 1, 26, 9, 7, 16, 553235, 7))
				) [x_1]([Key], [Value])
			WHERE
				[x_1].[Key] = [outfeed].[Id]
		) [t2]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[Test3847_OutfeedTransportOrder]', N'U') IS NOT NULL)
	DROP TABLE [Test3847_OutfeedTransportOrder]

