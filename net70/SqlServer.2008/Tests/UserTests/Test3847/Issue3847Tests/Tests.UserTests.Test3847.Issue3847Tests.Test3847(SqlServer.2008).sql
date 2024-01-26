BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[Test3847_OutfeedTransportOrder]', N'U') IS NOT NULL)
	DROP TABLE [Test3847_OutfeedTransportOrder]

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[Test3847_OutfeedTransportOrder]', N'U') IS NULL)
	CREATE TABLE [Test3847_OutfeedTransportOrder]
	(
		[Id] UniqueIdentifier NOT NULL
	)

BeforeExecute
-- SqlServer.2008
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
					('32a0a78b-3660-4453-9d45-4212e89d9f54',CAST('2024-01-26T08:56:26.1285241' AS DATETIME2)),
					('448a0b29-3c41-4ed4-9e6c-d6730abc7720',CAST('2024-01-26T08:56:26.1294363' AS DATETIME2)),
					('dbd12979-b537-4149-963a-31135511d2ba',CAST('2024-01-26T08:56:26.1294378' AS DATETIME2))
				) [x]([Key], [Value])
			WHERE
				[x].[Key] = [outfeed].[Id]
		) [t1]
		OUTER APPLY (
			SELECT TOP (@take_1)
				[x_1].[Value] as [NextCheck]
			FROM
				(VALUES
					('8e0928be-b95a-48e7-b5e4-8341177a9d30',CAST('2024-01-26T08:56:26.1294379' AS DATETIME2)),
					('531626a0-5142-4fcc-9395-9f44a74e330a',CAST('2024-01-26T08:56:26.1294382' AS DATETIME2))
				) [x_1]([Key], [Value])
			WHERE
				[x_1].[Key] = [outfeed].[Id]
		) [t2]

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[Test3847_OutfeedTransportOrder]', N'U') IS NOT NULL)
	DROP TABLE [Test3847_OutfeedTransportOrder]

