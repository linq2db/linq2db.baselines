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
					('4defed1e-3178-43b9-9d95-78428397f72f',DATETIME2FROMPARTS(2024, 1, 26, 10, 24, 32, 8935852, 7)),
					('9c458825-fe3b-42d0-986a-f311d8731788',DATETIME2FROMPARTS(2024, 1, 26, 10, 24, 32, 8935874, 7)),
					('da239688-4c2c-4f1d-8775-7a214d5213c6',DATETIME2FROMPARTS(2024, 1, 26, 10, 24, 32, 8935885, 7))
				) [x]([Key], [Value])
			WHERE
				[x].[Key] = [outfeed].[Id]
		) [t1]
		OUTER APPLY (
			SELECT TOP (@take_1)
				[x_1].[Value] as [NextCheck]
			FROM
				(VALUES
					('c960c628-90bf-42ec-a39c-21efc494cb83',DATETIME2FROMPARTS(2024, 1, 26, 10, 24, 32, 8935895, 7)),
					('50d8e420-b9c8-4a23-808a-8089b1bbc88f',DATETIME2FROMPARTS(2024, 1, 26, 10, 24, 32, 8935906, 7))
				) [x_1]([Key], [Value])
			WHERE
				[x_1].[Key] = [outfeed].[Id]
		) [t2]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [Test3847_OutfeedTransportOrder]

